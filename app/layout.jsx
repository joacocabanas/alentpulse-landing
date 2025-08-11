import './globals.css';
import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Talent Pulse — Executive & Mid-Level Search + RPO',
  description: 'AI-accelerated recruitment across US & LATAM.',
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
