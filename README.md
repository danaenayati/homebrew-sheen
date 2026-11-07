# Homebrew tap for Sheen

[Sheen](https://github.com/danaenayati/sheen) is a free, open-source Mac cleaner, optimizer and malware scanner.

```bash
brew tap danaenayati/sheen
brew trust danaenayati/sheen   # Homebrew asks you to trust third-party taps once
brew install --cask sheen
```

Update with `brew upgrade --cask sheen`, remove with `brew uninstall --cask sheen` (add `--zap` to also remove its settings and logs).

Sheen needs macOS 14 or newer on Apple Silicon. It is not notarized by Apple yet, so on first launch open **System Settings → Privacy & Security** and click **Open Anyway**.

## Releasing

After a new Sheen release, set `version` and `sha256` in `Casks/sheen.rb` to the new DMG:

```bash
shasum -a 256 Sheen-<version>.dmg
```
