# Homebrew Tap for NoxKey

macOS Keychain secret manager with Touch ID -- for developers and AI agents.

## Install both (app + CLI)

```bash
brew tap no-box-dev/noxkey
brew install --cask noxkey   # menu bar app
brew install noxkey           # CLI tool
```

Or just the CLI (if you build the app from source):

```bash
brew tap no-box-dev/noxkey
brew install noxkey
```

## What gets installed

| Package | Type | What |
|---|---|---|
| `noxkey` (formula) | CLI | `noxkey` command in your terminal |
| `noxkey` (cask) | App | NoxKey.app in /Applications |

The CLI communicates with the app over a local Unix socket. The app must be running for CLI commands to work.

## Links

- [NoxKey repo](https://github.com/No-Box-Dev/Noxkey)
- [No-Box-Dev](https://noboxdev.com)
