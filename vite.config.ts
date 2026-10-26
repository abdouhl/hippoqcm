import { defineConfig, type Plugin } from "vite";
import react from "@vitejs/plugin-react";
import { cloudflare } from "@cloudflare/vite-plugin";

// Lists every built file of the page as /precache.json, for the service worker (public/sw.js) to
// download on install, so chunks loaded on demand work offline too.
function precache(): Plugin {
  return {
    name: "precache",
    applyToEnvironment: (env) => env.name === "client",
    generateBundle(_, bundle) {
      const files = Object.keys(bundle).filter((f) => !f.endsWith(".map") && !f.endsWith(".html") && !f.startsWith("."));
      this.emitFile({ type: "asset", fileName: "precache.json", source: JSON.stringify(files.map((f) => `/${f}`)) });
    },
  };
}

export default defineConfig({
  plugins: [react(), cloudflare(), precache()],
});
