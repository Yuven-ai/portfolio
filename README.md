# Yuvendren Naidoo — interactive portfolio

An animated personal site starring **Yuvie**, a 3D‑style character who walks the page with you.
Live: https://yuven-ai.github.io/portfolio/

## What's in it

- **A roaming character.** Yuvie stands in the hero, then walks between sections as you scroll, drifts toward your cursor and turns to face it. Grab and throw him: real gravity, wall bounces, squash‑and‑stretch landings. Double‑click anywhere and he runs there.
- **Voice.** 69 pre‑rendered neural voice lines (Australian English) with audio ducking so he's always heard over effects.
- **Synthesized sound.** Tennis "pock", page swish, unboxing crinkle‑pop, and a generative music engine (lo‑fi, afrobeats, amapiano, house, drum & bass) built on the Web Audio API — no audio files for effects.
- **Playable hobbies.** Rally a tennis ball with physics, turn pages on an e‑reader he reads aloud, change tracks and watch him dance to the BPM, unbox gadgets.
- **Toolkit gear‑check.** An automated tour: he walks card to card, strikes a matching pose, and explains each skill group.
- **Career as a ticket queue**, work highlights with 3D tilt cards, certification badges, and a visitor wall backed by Supabase.

## Tech

Single `index.html`, zero dependencies and no build step. Vanilla JS, CSS, Canvas, Web Audio. Character art generated from my photo and cut out with Python/Pillow; voice lines rendered with neural TTS and embedded as data URIs. Visitor wall: Supabase (Postgres + row‑level security) via the REST API; see `supabase-setup.sql`.

## Run locally

Open `index.html` in a browser. That's it.

## Deploy

Any static host. This repo is served with GitHub Pages from the `main` branch root.
