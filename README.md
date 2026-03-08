# Homebrew Tap for NoxKey

macOS Keychain secret manager with Touch ID -- for developers and AI agents.

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

## Verify security

After installing, run:

```bash
noxkey verify
```

This checks that NoxKey has no outbound network access, is properly sandboxed, and secrets never leave your machine.

## Links

- [NoxKey](https://noboxdev.com/tools/noxkey)
- [No-Box-Dev](https://noboxdev.com)
