# 🧰 English e-Tools Hub

**CCC Kei Tsz Primary School · English Department**

A playful, primary-school-styled hub where teachers share interactive English
e-teaching tools — the English sibling of
[ccc-keitsz-math](https://ccc-keitsz-math.pages.dev).

## Features

- 🔍 **Browse e-Tools** — filter by grade level (P1–P6), learning area (Phonics, Vocabulary, Grammar, Reading, Listening…) or keyword search
- ✨ **Share an e-Tool** — teachers submit a title, creator, grade, learning area, link, description and tags
- 🔑 **Teacher Admin** — password-protected admin mode to delete e-tools (with confirmation)

Pure static site (single `index.html`, no build step). e-Tools are stored in
`localStorage` and seeded with sample tools.

## Run locally

```sh
npx serve public
```

## Deploy to Cloudflare Pages

```sh
wrangler pages deploy public --project-name=ccc-keitsz-english
```
