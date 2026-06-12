# 🌈 Grammar Garden

**CCC Kei Tsz Primary School · English Grammar Resources**

A playful, primary-school-styled hub where teachers share fun interactive English
grammar games and lessons — the English-grammar sibling of
[ccc-keitsz-math](https://ccc-keitsz-math.pages.dev).

## Features

- 🔍 **Browse Resources** — filter by grade level (P1–P6), grammar topic, or keyword search
- ✨ **Share a Resource** — teachers submit a title, creator, grade, topic, link, description and tags
- 🔑 **Teacher Admin** — password-protected admin mode to delete resources (with confirmation)

Pure static site (single `index.html`, no build step). Resources are stored in
`localStorage` and seeded with sample materials.

## Run locally

```sh
npx serve public
```

## Deploy to Cloudflare Pages

```sh
wrangler pages deploy public --project-name=ccc-keitsz-english
```
