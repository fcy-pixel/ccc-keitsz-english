export async function onRequestDelete({ request, env, params }) {
  if (request.headers.get("X-Admin-Password") !== env.ADMIN_PASSWORD) {
    return Response.json({ error: "Wrong password" }, { status: 401 });
  }
  await env.DB.prepare("DELETE FROM resources WHERE id = ?").bind(params.id).run();
  return Response.json({ ok: true });
}
