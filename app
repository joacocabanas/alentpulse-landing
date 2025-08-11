@tailwind base;
@tailwind components;
@tailwind utilities;

/* Theme variables from palette */
:root{
  --tp-primary:#4965D1; /* Indigo */
  --tp-secondary:#49D1BB; /* Teal */
  --tp-accent:#48B9D0; /* Cyan */
  --tp-success:#49D18D; /* Green */
  --tp-info:#4990D1; /* Blue */
}

html, body { height: 100%; scroll-behavior: smooth; }

import "./globals.css";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Talent Pulse — Executive & Mid‑Level Search + RPO",
  description: "AI‑accelerated recruitment for Construction, Technology, Accounting & Corporate across US & LATAM.",
  icons: [{ rel: "icon", url: "/favicon.ico" }],
  openGraph: {
    title: "Talent Pulse",
    description: "Executive & Mid‑Level Search + RPO | Fortune 100 recruiting pedigree",
    url: "https://www.talentpulsesolutions.com",
    siteName: "Talent Pulse",
    type: "website",
  },
  metadataBase: new URL("https://www.talentpulsesolutions.com"),
};

export default function RootLayout({children}:{children: React.ReactNode}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}

'use client';
import React, { useEffect } from "react";
import { motion } from "framer-motion";

/**
 * Talent Pulse — One‑Page Landing (Next.js App Router)
 * Instructions:
 *  - Replace CALENDLY_URL below with your real link.
 *  - To embed HubSpot, paste the embed snippet where indicated in Contact section.
 *  - Palette lives in globals.css via CSS variables.
 */

const CALENDLY_URL = "https://calendly.com/"; // TODO: replace with your real Calendly scheduling URL

const DevChecks: React.FC = () => {
  useEffect(() => {
    const styles = getComputedStyle(document.documentElement);
    ["--tp-primary","--tp-secondary","--tp-accent","--tp-success","--tp-info"].forEach(v=>{
      console.assert(styles.getPropertyValue(v).trim().length>0, `Missing CSS var ${v}`);
    });
    ["solutions","industries","process","tech","contact","book"].forEach(id=>{
      console.assert(!!document.getElementById(id), `Section #${id} not found`);
    });
  }, []);
  return null;
};

const Badge: React.FC<{children: React.ReactNode}> = ({children}) => (
  <span className="inline-flex items-center rounded-full border px-3 py-1 text-xs font-medium tracking-wide text-[var(--tp-primary)] border-[var(--tp-primary)]/30 bg-[var(--tp-primary)]/5">
    {children}
  </span>
);

const Section: React.FC<{id?: string; kicker?: string; title?: string; subtitle?: string; children?: React.ReactNode;}> = ({id,kicker,title,subtitle,children}) => (
  <section id={id} className="w-full py-20 md:py-28">
    <div className="mx-auto max-w-6xl px-4">
      {kicker && (<div className="mb-4"><Badge>{kicker}</Badge></div>)}
      {title && (<h2 className="text-2xl md:text-4xl font-semibold tracking-tight leading-tight">{title}</h2>)}
      {subtitle && (<p className="mt-3 text-base md:text-lg text-neutral-600 max-w-3xl">{subtitle}</p>)}
      <div className="mt-8">{children}</div>
    </div>
  </section>
);

const Nav: React.FC = () => (
  <header className="sticky top-0 z-50 backdrop-blur bg-white/70 border-b">
    <div className="mx-auto max-w-6xl px-4 h-16 flex items-center justify-between">
      <a href="#top" className="flex items-center gap-3">
        <div className="h-9 w-9 rounded-2xl bg-[var(--tp-primary)] text-white grid place-content-center font-bold">TP</div>
        <div className="leading-tight">
          <div className="font-semibold">Talent Pulse</div>
          <div className="text-xs tracking-wide text-neutral-500">AI‑accelerated Recruitment</div>
        </div>
      </a>
      <nav className="hidden md:flex items-center gap-6 text-sm">
        <a href="#solutions" className="hover:opacity-70">Solutions</a>
        <a href="#industries" className="hover:opacity-70">Industries</a>
        <a href="#process" className="hover:opacity-70">Process</a>
        <a href="#tech" className="hover:opacity-70">Tech</a>
        <a href="#contact" className="hover:opacity-70">Contact</a>
        <a href="#book" className="rounded-full bg-[var(--tp-primary)] text-white px-4 py-2 hover:opacity-90">Book a consult</a>
      </nav>
    </div>
  </header>
);

const Hero: React.FC = () => (
  <section id="top" className="relative overflow-hidden">
    <div className="absolute inset-0 -z-10 bg-gradient-to-b from-[var(--tp-secondary)]/15 to-white" />
    <div className="mx-auto max-w-6xl px-4 py-20 md:py-28 grid md:grid-cols-2 gap-10 items-center">
      <motion.div initial={{opacity:0, y:20}} animate={{opacity:1, y:0}} transition={{duration:0.6}}>
        <Badge>Executive & Mid‑Level Search · RPO</Badge>
        <h1 className="mt-4 text-3xl md:text-5xl font-semibold leading-[1.1]">
          Recruitment in rhythm with your business.
        </h1>
        <p className="mt-4 text-neutral-600 md:text-lg max-w-xl">
          Fortune 100‑trained partners delivering Executive & Mid‑Level hiring and RPO for Construction, Technology, Accounting & Corporate teams across the US and LATAM.
        </p>
        <div className="mt-6 flex flex-wrap items-center gap-3">
          <a href="#book" className="rounded-2xl bg-[var(--tp-primary)] text-white px-5 py-3 text-sm font-medium">Book a 15‑min consult</a>
          <a href="#solutions" className="rounded-2xl border px-5 py-3 text-sm font-medium hover:bg-[var(--tp-primary)] hover:text-white transition">See our solutions</a>
        </div>
        <div className="mt-6 text-xs text-neutral-500">
          Average shortlist in 7–14 business days · US & LATAM coverage
        </div>
      </motion.div>
      <motion.div initial={{opacity:0, y:10}} animate={{opacity:1, y:0}} transition={{duration:0.8, delay:0.1}} className="md:justify-self-end">
        <div className="relative p-2">
          <div className="absolute -inset-2 bg-gradient-to-tr from-[var(--tp-accent)]/30 to-white rounded-3xl blur-2xl" />
          <div className="relative rounded-3xl border bg-white p-6 shadow-sm">
            <div className="text-sm font-medium">Our focus</div>
            <ul className="mt-4 grid grid-cols-2 gap-3 text-sm">
              {["Executive Search","Mid‑Level Management","Professional Recruitment","RPO Squads","US & LATAM","AI‑powered ATS"].map((item)=>(
                <li key={item} className="rounded-xl border p-3">{item}</li>
              ))}
            </ul>
          </div>
        </div>
      </motion.div>
    </div>
  </section>
);

const Logos: React.FC = () => (
  <div className="border-y bg-neutral-50">
    <div className="mx-auto max-w-6xl px-4 py-8 md:py-10">
      <div className="text-xs uppercase tracking-wider text-neutral-500">Experience recruiting for</div>
      <div className="mt-4 grid grid-cols-3 md:grid-cols-7 gap-4 items-center text-neutral-700">
        {["Apple","Intel","Microsoft","Big 4","Cummins","H&M","Black & Decker"].map((name)=>(
          <div key={name} className="text-center text-sm md:text-base opacity-70">{name}</div>
        ))}
      </div>
    </div>
  </div>
);

const Cards: React.FC<{ items: {title:string; desc:string; points?:string[]}[] }> = ({ items }) => (
  <div className="grid md:grid-cols-3 gap-5">
    {items.map((card)=>(
      <div key={card.title} className="rounded-2xl border p-6 shadow-sm bg-white">
        <div className="text-sm font-semibold">{card.title}</div>
        <p className="mt-2 text-sm text-neutral-600">{card.desc}</p>
        {card.points && (
          <ul className="mt-4 space-y-2 text-sm list-disc pl-5">
            {card.points.map((p)=>(<li key={p}>{p}</li>))}
          </ul>
        )}
      </div>
    ))}
  </div>
);

const ContactForm: React.FC = () => (
  <div className="grid gap-4">
    {/* ==== HUBSPOT EMBED HERE ====
      En HubSpot: Marketing -> Forms -> Create form -> Embedded -> Publish.
      Copiá el código de inserción y pegalo aquí abajo (reemplazando este <div> por el snippet).
    */}
    <div className="rounded-xl border p-4 text-sm bg-white">
      <p className="text-neutral-600">
        Paste your HubSpot (or Zoho Web‑to‑Lead) embed snippet here to activate the CRM form.
      </p>
    </div>
  </div>
);

export default function Page() {
  return (
    <div className="font-sans text-neutral-900">
      <DevChecks />

      <header className="hidden">
        {/* CSS vars (palette lives in globals.css) */}
      </header>

      <Nav />
      <Hero />
      <Logos />

      <Section
        id="solutions"
        kicker="Solutions"
        title="Executive & Mid‑Level Search, Professional Recruitment, and RPO"
        subtitle="Built by partners with Fortune 100 experience. Precision search, structured assessments, and AI‑enabled operations to deliver consistent hiring outcomes."
      >
        <Cards
          items={[
            {
              title: "Executive & Mid‑Level Search",
              desc: "Targeted sourcing and competency‑based evaluation for leadership roles.",
              points: ["Role scoping & scorecards","Market mapping & outreach","Structured interviews & references"],
            },
            {
              title: "Professional Recruitment",
              desc: "High‑caliber professionals across Technology, Finance, Operations and Corporate.",
              points: ["Shortlists in 7–14 business days","Cultural & values alignment","Offer management & onboarding"],
            },
            {
              title: "RPO Squads",
              desc: "Embedded recruiters with SLAs, dashboards and hiring‑manager enablement.",
              points: ["On‑site or remote squads","Capacity flex for hiring spikes","Weekly analytics & talent pipeline"],
            },
          ]}
        />
      </Section>

      <Section
        id="industries"
        kicker="Industries"
        title="Construction · Technology · Accounting · Corporate"
        subtitle="We recruit for developers & construction firms, software & semiconductor companies, Big 4 & in‑house finance, and corporate functions across the US and LATAM."
      >
        <Cards
          items={[
            { title: "Construction", desc: "Superintendents, PMs, Estimators, Safety, Pre‑con, Field Ops." },
            { title: "Technology", desc: "Software, Cloud/Infra, Data, Product, Cybersecurity, IT Ops." },
            { title: "Accounting & Corporate", desc: "Accounting/FP&A, HR, Legal, Procurement, Marketing, Admin." },
          ]}
        />
      </Section>

      <Section
        id="process"
        kicker="Method"
        title="A clear, measurable hiring rhythm"
        subtitle="Discover → Scope → Source → Assess (AI + interviews) → Shortlist → Hire → Onboard"
      >
        <div className="grid md:grid-cols-7 gap-3">
          {["Discover","Scope","Source","Assess","Shortlist","Hire","Onboard"].map((step, i)=>(
            <div key={step} className="rounded-2xl border p-4 text-sm bg-white">
              <div className="font-semibold">{i+1}. {step}</div>
              <p className="mt-2 text-neutral-600">
                {i===3 ? "Signals from AI screening + structured interviews." : "Milestone and SLA‑driven progress."}
              </p>
            </div>
          ))}
        </div>
      </Section>

      <Section
        id="tech"
        kicker="Tech Stack"
        title="ATS + AI that scales with you"
        subtitle="Initial stack: Manatal (ATS/CRM), HireVue (video analytics), Paradox (candidate chatbot), Factorial (HR). Scale‑up: Eightfold AI, Entelo/Fetcher, HubSpot/Zoho, Zapier/Make."
      >
        <div className="grid md:grid-cols-4 gap-4 text-sm">
          {["Manatal — ATS/CRM","HireVue — Video interviews","Paradox — Candidate comms","Factorial — HR ops"].map((t)=>(
            <div key={t} className="rounded-2xl border p-4 bg-white">{t}</div>
          ))}
        </div>
        <p className="mt-4 text-sm text-neutral-600">Estimated initial SaaS budget: USD 150–300/mo (variable by users).</p>
      </Section>

      <Section
        id="about"
        kicker="Why Talent Pulse"
        title="Fortune 100 recruiting pedigree"
        subtitle="Partners with experience recruiting for Apple, Intel, Microsoft, Big 4, Cummins, H&M, Black & Decker, leading real‑estate developers and construction companies."
      >
        <div className="grid md:grid-cols-2 gap-6">
          <div className="rounded-2xl border p-6 bg-white">
            <div className="text-sm font-semibold">What sets us apart</div>
            <ul className="mt-3 space-y-2 text-sm list-disc pl-5">
              <li>Up to 60% faster time‑to‑hire through AI‑assisted workflows</li>
              <li>Candidate experience designed for clarity and speed</li>
              <li>Transparent dashboards, weekly reporting, SLA commitments</li>
            </ul>
          </div>
          <div className="rounded-2xl border p-6 bg-white">
            <div className="text-sm font-semibold">Coverage</div>
            <p className="mt-2 text-sm text-neutral-600">United States & Latin America · English & Spanish delivery.</p>
            <div className="mt-4 grid grid-cols-2 gap-3 text-sm">
              <div className="rounded-xl border p-3">Remote & on‑site engagements</div>
              <div className="rounded-xl border p-3">Retained / Contingent / RPO</div>
            </div>
          </div>
        </div>
      </Section>

      <Section id="book" kicker="Get started" title="Book a 15‑minute consultation">
        <div className="rounded-2xl border p-6 bg-white">
          <p className="text-sm text-neutral-600">Embed your Calendly here (replace the iframe src with your link).</p>
          <div className="mt-4 aspect-video w-full rounded-xl overflow-hidden border">
            <iframe title="Calendly" src={CALENDLY_URL} className="h-full w-full" loading="lazy" />
          </div>
        </div>
      </Section>

      <Section id="contact" kicker="Contact" title="Tell us about your hiring needs">
        <div className="grid md:grid-cols-2 gap-8">
          <ContactForm />
          <div className="rounded-2xl border p-6 bg-white">
            <div className="text-sm font-semibold">Prefer email or phone?</div>
            <ul className="mt-3 text-sm space-y-2">
              <li>Email: <a className="underline" href="mailto:hello@talentpulsesolutions.com">hello@talentpulsesolutions.com</a></li>
              <li>Sales: <a className="underline" href="mailto:sales@talentpulsesolutions.com">sales@talentpulsesolutions.com</a></li>
              <li>LinkedIn: <span className="text-neutral-500">/company/talentpulseai</span></li>
            </ul>
            <div className="mt-6">
              <div className="text-sm font-semibold">Legal</div>
              <p className="mt-2 text-xs text-neutral-500">Privacy Policy · Terms · EEO Statement</p>
            </div>
          </div>
        </div>
      </Section>

      <footer className="border-t">
        <div className="mx-auto max-w-6xl px-4 py-10 flex flex-col md:flex-row items-center justify-between gap-4">
          <div className="flex items-center gap-3">
            <div className="h-8 w-8 rounded-2xl bg-[var(--tp-primary)] text-white grid place-content-center text-xs font-bold">TP</div>
            <span className="text-sm">© {new Date().getFullYear()} Talent Pulse. All rights reserved.</span>
          </div>
          <div className="text-sm text-neutral-500">US & LATAM · English / Español</div>
        </div>
      </footer>
    </div>
  );
}
