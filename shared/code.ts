// Sync codes: 16 Crockford base32 characters (80 random bits), shown as XXXX-XXXX-XXXX-XXXX.
// Whoever has the code has the progress, so it doubles as the user's only credential.

const ALPHABET = "0123456789ABCDEFGHJKMNPQRSTVWXYZ";
const LENGTH = 16;

export function newCode(): string {
  const bytes = crypto.getRandomValues(new Uint8Array(LENGTH));
  return [...bytes].map((b) => ALPHABET[b & 31]).join(""); // 256 is a multiple of 32: no bias
}

/** Forgive what people get wrong when copying a code by hand: case, dashes, spaces, I/L/O. */
export function normalizeCode(input: string): string {
  return input.toUpperCase().replace(/[^0-9A-Z]/g, "").replace(/[IL]/g, "1").replace(/O/g, "0").replace(/U/g, "V");
}

export const isCode = (code: string) => code.length === LENGTH && [...code].every((c) => ALPHABET.includes(c));

export const formatCode = (code: string) => code.match(/.{1,4}/g)!.join("-");

/** Hex SHA-256 of a normalized code, as stored in users.token_hash. */
export async function hashCode(code: string): Promise<string> {
  const digest = await crypto.subtle.digest("SHA-256", new TextEncoder().encode(code));
  return [...new Uint8Array(digest)].map((b) => b.toString(16).padStart(2, "0")).join("");
}
