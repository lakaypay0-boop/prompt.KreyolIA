# Déploiement Cloudflare Pages
1. `npx wrangler d1 create kia-leads`  → note le database_id
2. `npx wrangler d1 execute kia-leads --remote --file=schema.sql`
3. Pages > ton projet > Settings > Bindings > D1 : variable `DB` = kia-leads (optionnel : variable `SALT` = texte secret)
4. `npx wrangler pages deploy .`  (depuis ce dossier)
5. Lire les contacts : `npx wrangler d1 execute kia-leads --remote --command "SELECT * FROM leads ORDER BY id DESC LIMIT 20"`
Si le site n'est pas sur kreyolia.com, change `canonical`, `og:url` et `og:image` dans index.html.
