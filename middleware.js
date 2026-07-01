// middleware.js — place at PROJECT ROOT (same level as index.html), not inside a subfolder.
// Vercel auto-detects this file and runs it on every matching request before serving the asset.

export const config = {
  matcher: "/style.css",
};

export default function middleware(request) {
  const fetchSite = request.headers.get("sec-fetch-site");

  // Fail-open: if the header is missing (older browser, some legit edge case),
  // let the request through. We only actively block when the browser has
  // explicitly told us this is NOT a same-origin request.
  if (fetchSite && fetchSite !== "same-origin") {
    return new Response("", {
      status: 403,
      headers: { "Content-Type": "text/css" },
    });
  }

  // same-origin, or header absent -> let Vercel serve style.css normally
  return;
}
