# Jlec Tap

Personal Homebrew tap for `jlec`. Contains both command-line formulae and
GUI-app casks that aren't in `homebrew-core`/`homebrew-cask`, usually because
they're private, unlisted, or too niche for the main repos.

## What's in this tap

| Name | Type | Description |
| --- | --- | --- |
| [`para`](Formula/para.rb) | Formula | Local, offline audio/video transcription via NVIDIA Parakeet + native CoreML (Apple Silicon only) |
| [`kraken-desktop`](Casks/kraken-desktop.rb) | Cask | Kraken.com's official cryptocurrency exchange desktop trading app |

## How do I install these?

Formulae and casks both install the same way — `brew` tells them apart automatically:

```sh
brew install jlec/tap/<name>
brew install --cask jlec/tap/<name>
```

Or tap once, then install by name:

```sh
brew tap jlec/tap
brew install para
brew install --cask kraken-desktop
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jlec/tap"
brew "para"
cask "kraken-desktop"
```

## Notes on `kraken-desktop`

Kraken publishes it behind a permanently-"latest" download URL with no version
manifest, so the cask can't pin a specific version or checksum without going
stale on every new release — it uses `version :latest` / `sha256 :no_check`
instead, same as Homebrew does for other vendor apps with the same setup. The
installer is Apple-notarized and signed by Kraken's legal entity, Payward, Inc.
It installs via a signed `pkg`, so `brew install --cask` will prompt for your
password/Touch ID like any other pkg-based cask.

## Updating a formula/cask

1. Edit the file in `Formula/` or `Casks/`.
2. `brew style --cask <name>` / `brew style <name>` to lint.
3. `brew audit --cask --online <name>` / `brew audit --online <name>` to check for issues.
4. `brew install --cask <name>` / `brew install <name>` to confirm it actually installs.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
