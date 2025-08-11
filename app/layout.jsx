import "./globals.css";

export const metadata = {
  title: "Talent Pulse — Executive & Mid-Level Search + RPO",
  description: "AI-accelerated recruitment across US & LATAM.",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
