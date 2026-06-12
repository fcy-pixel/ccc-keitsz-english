function str(v, max) {
  return typeof v === "string" ? v.trim().slice(0, max) : "";
}
function err(message, status) {
  return Response.json({ error: message }, { status });
}

export async function onRequestGet({ env }) {
  const { results } = await env.DB.prepare(
    "SELECT * FROM resources ORDER BY created_at DESC"
  ).all();
  const resources = results.map((r) => ({ ...r, tags: JSON.parse(r.tags || "[]") }));
  return Response.json({ resources });
}

export async function onRequestPost({ request, env }) {
  let b;
  try {
    b = await request.json();
  } catch {
    return err("Invalid JSON", 400);
  }
  const title = str(b.title, 80);
  const creator = str(b.creator, 40);
  const grade = str(b.grade, 4);
  const topic = str(b.topic, 40);
  const url = str(b.url, 500);
  const description = str(b.description, 200);
  if (!title || !creator || !grade || !topic || !url || !description) {
    return err("Missing required fields", 400);
  }
  if (!/^https?:\/\//i.test(url)) {
    return err("URL must start with http:// or https://", 400);
  }
  const tags = Array.isArray(b.tags)
    ? b.tags.slice(0, 10).map((t) => String(t).trim().slice(0, 30)).filter(Boolean)
    : [];
  const id = "r" + Date.now().toString(36) + Math.random().toString(36).slice(2, 7);
  await env.DB.prepare(
    "INSERT INTO resources (id, title, creator, grade, topic, url, description, tags, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"
  )
    .bind(id, title, creator, grade, topic, url, description, JSON.stringify(tags), Date.now())
    .run();
  return Response.json({ ok: true, id }, { status: 201 });
}
