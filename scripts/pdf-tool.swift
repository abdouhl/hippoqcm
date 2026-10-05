// PDF helper built on macOS PDFKit (no poppler/ghostscript needed).
// Usage:
//   swift scripts/pdf-tool.swift info   <in.pdf>                      page count, size, whether it has a text layer
//   swift scripts/pdf-tool.swift text   <in.pdf> [first] [last]       text layer per page (empty for pure scans)
//   swift scripts/pdf-tool.swift render <in.pdf> <page> <out.png> [dpi=150]
//   swift scripts/pdf-tool.swift shrink <in.pdf> <out.pdf> [dpi=110] [quality=0.6]
//        Re-rasterizes every page as JPEG — for scans that exceed the 25 MiB static-asset limit.
import AppKit
import PDFKit

func fail(_ msg: String) -> Never {
    FileHandle.standardError.write((msg + "\n").data(using: .utf8)!)
    exit(1)
}

func open(_ path: String) -> PDFDocument {
    guard let doc = PDFDocument(url: URL(fileURLWithPath: path)) else { fail("can't open \(path)") }
    return doc
}

func rasterize(_ page: PDFPage, dpi: Double) -> NSBitmapImageRep {
    let box = page.bounds(for: .mediaBox)
    let scale = dpi / 72
    let w = Int(box.width * scale), h = Int(box.height * scale)
    let rep = NSBitmapImageRep(
        bitmapDataPlanes: nil, pixelsWide: w, pixelsHigh: h, bitsPerSample: 8, samplesPerPixel: 4,
        hasAlpha: true, isPlanar: false, colorSpaceName: .deviceRGB, bytesPerRow: 0, bitsPerPixel: 0)!
    let ctx = NSGraphicsContext(bitmapImageRep: rep)!
    NSGraphicsContext.saveGraphicsState()
    NSGraphicsContext.current = ctx
    let cg = ctx.cgContext
    cg.setFillColor(NSColor.white.cgColor)
    cg.fill(CGRect(x: 0, y: 0, width: w, height: h))
    cg.scaleBy(x: scale, y: scale)
    page.draw(with: .mediaBox, to: cg)
    NSGraphicsContext.restoreGraphicsState()
    return rep
}

let args = CommandLine.arguments.dropFirst().map { $0 }
guard let cmd = args.first, args.count >= 2 else { fail("usage: pdf-tool.swift info|text|render|shrink <in.pdf> ...") }
let doc = open(args[1])

switch cmd {
case "info":
    let bytes = (try? FileManager.default.attributesOfItem(atPath: args[1])[.size] as? Int) ?? 0
    var textPages = 0
    for i in 0..<doc.pageCount where (doc.page(at: i)?.string?.trimmingCharacters(in: .whitespacesAndNewlines).count ?? 0) > 40 {
        textPages += 1
    }
    print("pages: \(doc.pageCount)")
    print("size_mb: \(String(format: "%.1f", Double(bytes) / 1_048_576))")
    print("pages_with_text: \(textPages)  (\(textPages == 0 ? "scanned — read pages visually" : "has a text layer"))")
case "text":
    let first = args.count > 2 ? Int(args[2])! : 1
    let last = args.count > 3 ? Int(args[3])! : doc.pageCount
    for i in first...min(last, doc.pageCount) {
        print("===== page \(i) =====")
        print(doc.page(at: i - 1)?.string ?? "")
    }
case "render":
    guard args.count >= 4, let n = Int(args[2]), let page = doc.page(at: n - 1) else { fail("render <in.pdf> <page> <out.png> [dpi]") }
    let dpi = args.count > 4 ? Double(args[4])! : 150
    let png = rasterize(page, dpi: dpi).representation(using: .png, properties: [:])!
    try! png.write(to: URL(fileURLWithPath: args[3]))
    print("wrote \(args[3])")
case "shrink":
    guard args.count >= 3 else { fail("shrink <in.pdf> <out.pdf> [dpi] [quality]") }
    let dpi = args.count > 3 ? Double(args[3])! : 110
    let quality = args.count > 4 ? Double(args[4])! : 0.6
    let out = PDFDocument()
    for i in 0..<doc.pageCount {
        let page = doc.page(at: i)!
        let rep = rasterize(page, dpi: dpi)
        let jpeg = rep.representation(using: .jpeg, properties: [.compressionFactor: quality])!
        let image = NSImage(data: jpeg)!
        // Keep the original page size in points so #page links and zoom behave the same.
        image.size = page.bounds(for: .mediaBox).size
        out.insert(PDFPage(image: image)!, at: i)
    }
    guard out.write(to: URL(fileURLWithPath: args[2])) else { fail("couldn't write \(args[2])") }
    let bytes = (try? FileManager.default.attributesOfItem(atPath: args[2])[.size] as? Int) ?? 0
    print("wrote \(args[2]) — \(out.pageCount) pages, \(String(format: "%.1f", Double(bytes) / 1_048_576)) MB")
default:
    fail("unknown command \(cmd)")
}
