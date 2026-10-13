CREATE TABLE IF NOT EXISTS leads (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kind TEXT NOT NULL,            -- 'email' ou 'whatsapp'
  contact TEXT NOT NULL,
  lang TEXT,
  prompts TEXT,                  -- JSON : titres des prompts choisis (whatsapp)
  body TEXT,                     -- texte à envoyer (whatsapp)
  status TEXT NOT NULL DEFAULT 'new',
  ip_hash TEXT,
  created_at INTEGER NOT NULL
);
CREATE UNIQUE INDEX IF NOT EXISTS idx_leads_kind_contact ON leads(kind, contact) WHERE kind='email';
CREATE INDEX IF NOT EXISTS idx_leads_ip ON leads(ip_hash, created_at);
