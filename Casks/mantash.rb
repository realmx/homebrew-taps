cask "mantash" do
  version "1.1.36"

  on_arm do
    sha256 "f1c58190cad713de5bc27da56e193833f54c3e26d9ad0f82c96843484790892e"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "5507a83661148bf8004ae4c541d04de7fc53f166036e2040e2d0d169b5d1a529"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-x64.dmg"
  end

  name "MantaSH"
  desc "Native terminal workspace for local and SSH sessions"
  homepage "https://github.com/realmx/MantaSH"
  app "MantaSH.app"

  caveats <<~EOS
    MantaSH uses ad-hoc signing and is not Apple notarized. macOS may block its
    first launch; use the system Open Anyway control after verifying the download.
  EOS
end
