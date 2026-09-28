# MantaSH Homebrew tap

Install MantaSH on macOS:

```sh
brew install --cask realmx/taps/mantash
brew upgrade --cask mantash
```

Cask versions and SHA-256 checksums are updated automatically after a complete
[MantaSH release](https://github.com/realmx/MantaSH/releases) is published.
The cask selects the arm64 or Intel DMG for the host architecture.

MantaSH uses ad-hoc signing and is not Apple notarized. macOS may block its
first launch. Verify the download and follow the system Open Anyway flow;
Homebrew installation does not bypass Gatekeeper.
