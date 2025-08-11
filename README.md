# Talent Pulse — Landing (Next.js + Tailwind)

This is a one‑page site ready for Vercel.

## 1) Prerequisites
- Node.js 18+ (download from nodejs.org)
- A free GitHub and Vercel account.

## 2) Local run (optional)
```bash
npm install
npm run dev
```
Open http://localhost:3000

## 3) Calendly
Edit `app/page.tsx` and set `CALENDLY_URL` to your real link.

## 4) CRM (HubSpot/Zoho)
- HubSpot: create an Embedded Form and paste the embed snippet in the Contact section where indicated.
- Zoho CRM: generate Web-to-Lead embed and paste the snippet in the same spot.

## 5) Deploy to Vercel
1. Push this folder to a GitHub repo.
2. In Vercel: New Project → Import from GitHub → Deploy (framework auto-detected).
3. Connect your domain:
   - Add `talentpulsesolutions.com` and `www.talentpulsesolutions.com` in **Settings → Domains**.
   - Follow Vercel's DNS instructions (usually A 76.76.21.21 for apex, CNAME cname.vercel-dns.com for www).
4. SSL is automatic.
