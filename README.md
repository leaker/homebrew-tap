# leaker/homebrew-tap

Multi-product Homebrew tap for [leaker](https://github.com/leaker)'s projects.

## Available casks

| Cask  | Description                                                                | Upstream                                  |
|-------|----------------------------------------------------------------------------|-------------------------------------------|
| pouch | Desktop webview wrapper for web games with MITM proxy and script injection | https://github.com/leaker/pouch           |

## Install

```bash
brew tap leaker/tap
brew install --cask pouch
```

Or as a one-liner:

```bash
brew install --cask leaker/tap/pouch
```

## Uninstall

To remove the app and its associated user data:

```bash
brew uninstall --cask --zap pouch
```

## Notes

- Pouch is distributed as a universal (Apple Silicon + Intel) `.dmg`, code-signed and notarized by Apple.
- Minimum supported macOS version is Big Sur (11).
