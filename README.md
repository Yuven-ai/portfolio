# Yuvendren Naidoo — interactive portfolio

An animated personal site starring **Yuvie**, a 3D‑style character who walks the page with you.
Live: https://yuven-ai.github.io/portfolio/

## What's in it

- **A roaming character.** Yuvie stands in the hero, then walks between sections as you scroll, drifts toward your cursor and turns to face it. Grab and throw him: real gravity, wall bounces, squash‑and‑stretch landings. Double‑click anywhere and he runs there.
- **14 poses, 73 voice lines.** Pre‑rendered neural voice (Australian English) with audio ducking so he's always heard over effects. Voice and sound each have their own toggle.
- **Synthesized sound.** Tennis "pock", page swish, unboxing crinkle‑pop, bike bell and wind, and a generative music engine (lo‑fi, afrobeats, amapiano, house, drum & bass) built on the Web Audio API. No audio files for effects.
- **Playable hobbies.** Rally a tennis ball with physics, turn pages on an e‑reader he reads aloud, change tracks and watch him dance to the BPM, unbox gadgets, and ride a road bike down a scrolling road with a speed and distance HUD.
- **Toolkit gear‑check.** Each skill card has its own Yuvie in a matching pose; the cards light up in turn, chips pop in, and he explains each group. Click a card to jump ahead.
- **Work as case studies** (problem → what I did → result) with 3D tilt cards and a stats ticker, career as a ticket queue with company logos, certification badges, a booking link, and a visitor wall backed by Supabase.

## Tech

Single `index.html`, zero dependencies and no build step. Vanilla JS, CSS, Canvas, Web Audio. Character art generated from my photo and cut out with Python/Pillow; voice lines rendered with neural TTS and embedded as data URIs. Visitor wall: Supabase (Postgres + row‑level security) via the REST API; see `supabase-setup.sql`. `preview.png` is the social share card.

## How it was made

Built in a day with Claude as the pair programmer. I set the brief and the direction, chose what to keep and cut, tested every interaction on desktop and mobile, picked the voice, supplied the photo and logos, and set up the hosting and database. Claude wrote the code and generated the character art from my photo. Treat it the way I treat any tool at work: great at the heavy lifting, still needs someone who knows what good looks like.

## Run locally

Open `index.html` in a browser. That's it.

## Deploy

Any static host. This repo is served with GitHub Pages from the `main` branch root.

## License

All rights reserved. You're welcome to read the code and learn from it; please don't republish the site or reuse the Yuvie character, artwork or voice. See `LICENSE`.
