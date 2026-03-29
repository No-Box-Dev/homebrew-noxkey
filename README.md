# Homebrew Tap for [NoxKey](https://noxkey.ai)

**macOS Keychain secret manager with Touch ID — for developers and AI agents.**

NoxKey stores API keys, passwords, and tokens in the macOS Keychain. Touch ID protects every access. The encrypted share command lets AI agents use secrets without ever seeing the raw values. Zero outbound connections — your secrets never leave your Mac.

## Install

```bash
brew tap no-box-dev/noxkey
brew install --cask noxkey   # menu bar app → /Applications
brew install noxkey           # CLI tool → noxkey command
```

## What gets installed

| Package | Type | What |
|---|---|---|
| `noxkey` (cask) | App | NoxKey.app in /Applications |
| `noxkey` (formula) | CLI | `noxkey` command in your terminal |

The CLI communicates with the app over a local Unix socket. The app must be running for CLI commands to work.

## Quick start

```bash
# Store a secret from clipboard
noxkey set myproject/API_KEY --clipboard

# Retrieve it (Touch ID required)
noxkey get myproject/API_KEY

# Use with AI agents — secret never enters conversation context
eval "$(noxkey get myproject/API_KEY)"
```

## Key features

- **Touch ID authentication** — no master passwords
- **AI-agent safe sharing** — encrypted temp files that auto-delete in 60s
- **Process-tree detection** — blocks dangerous commands when called from AI tools
- **Menu bar app + Quick Access** — Cmd+Shift+K from any app
- **CLI included** — full secret management from your terminal
- **Project organization** — `org/project/KEY` naming convention
- **Expiry tracking** — warnings before credentials expire
- **Zero outbound connections** — everything stays on your Mac

## Verify security

After installing, run:

```bash
noxkey verify
```

This checks that NoxKey has no outbound network access, is properly sandboxed, and secrets never leave your machine.

## Links

- [noxkey.ai](https://noxkey.ai) — Homepage, docs, and downloads
- [Getting Started](https://noxkey.ai/docs.html) — Installation and CLI guide
- [AI Agent Security](https://noxkey.ai/ai-agents.html) — How NoxKey protects secrets from AI tools
- [NoxKey vs Alternatives](https://noxkey.ai/compare.html) — Comparison with .env files, 1Password, Doppler, SecretKit
- [No-Box-Dev](https://noboxdev.com) — Built by No Box Dev
