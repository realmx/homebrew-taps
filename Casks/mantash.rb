cask "mantash" do
  version "1.1.35"

  on_arm do
    sha256 "85b3af735fe7b9f982f6cdc5e1ea959de6a9e07cff23b0c8bcd0b3e58263e3cc"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "ce322711328db4f820820a90d783331f91163b81c6fadd733261c870a885e5fd"
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
