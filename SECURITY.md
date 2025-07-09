# 🔐 Security Policy

This repository is intended for educational purposes related to SQL and relational databases. While it does not contain production-level code, the following guidelines should be observed to ensure secure usage and contributions.

---

## Usage Guidelines

- Do not execute scripts on production or sensitive databases.
- Use non-administrative (non-root) database accounts.
- Avoid dynamic SQL with unsanitized user inputs.
- Use `GRANT`/`REVOKE` permissions responsibly.
- Secure your database environment (firewalls, access control).

---

## 🛡 Reporting Vulnerabilities

If you identify a security issue:

1. Submit a private GitHub issue titled `[Security] <summary>`, or  
2. Email us at: `security@example.com` *(replace with a real address)*

Please do not disclose issues publicly until reviewed.

---

## ✅ Secure Contribution Checklist

- No real credentials or personal data in scripts.
- Use safe query practices (e.g., `WHERE` in `DELETE`, parameterized examples).
- Avoid insecure or deprecated SQL patterns.

---

## 🧪 Recommended Tools

| Tool             | Purpose                            |
|------------------|------------------------------------|
| MySQL Workbench  | Secure SQL GUI                     |
| DBeaver          | Cross-platform secure SQL client   |
| DB Fiddle        | Safe online SQL sandbox            |

---

_Last updated: July 9, 2025_
