# 🧰 English e-Tools Hub

**CCC Kei Tsz Primary School · English Department**

A playful, primary-school-styled hub where teachers share interactive English
e-teaching tools — the English sibling of
[ccc-keitsz-math](https://ccc-keitsz-math.pages.dev).

## Features

- 🔍 **Browse e-Tools** — filter by grade level (P1–P6), learning area (Phonics, Vocabulary, Grammar, Reading, Listening…) or keyword search
- ✨ **Share an e-Tool** — teachers submit a title, creator, grade, learning area, link, description and tags
- 🔑 **Teacher Admin** — password-protected admin mode to delete e-tools (with confirmation)

Static front-end (single `index.html`, no build step) + Cloudflare Pages
Functions backed by a **D1 database**, so submitted e-tools are shared by
everyone in real time.

## API

- `GET /api/resources` — list all e-tools
- `POST /api/resources` — add an e-tool (JSON body)
- `DELETE /api/resources/:id` — delete (requires `X-Admin-Password` header)

## Run locally

```sh
wrangler d1 execute english-etools --local --file=schema.sql
wrangler pages dev
```

## Deploy to Cloudflare Pages

```sh
wrangler pages deploy
```
