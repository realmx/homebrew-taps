# realmx Homebrew tap

## FrpSync

```sh
brew install realmx/taps/frpsync
```

If newer Homebrew reports an untrusted tap, run
`brew trust --formula realmx/taps/frpsync` and retry. This trusts only FrpSync.

FrpSync is a command-line formula for macOS arm64 and Intel. Configure and initialize
both peers, run a preview, then use `brew services start frpsync` to enable real
synchronization writes (`--apply`) at login. Do not run the user service with sudo.
Before upgrading or removing it, run `brew services stop frpsync`, followed by
`brew upgrade frpsync` or `brew uninstall frpsync`. Configuration, synchronized
files and recovery state are preserved.

See the [installation and service guide](https://github.com/realmx/FrpSync-Releases)
for first-time setup, Linux installation, startup and removal.

## MantaSH

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
