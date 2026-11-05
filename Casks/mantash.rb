cask "mantash" do
  version "1.1.45"

  on_arm do
    sha256 "4e2a31d0b4d0fb347c8d299bb41fd349128321c63dc30a60904bda5f5a01ba30"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "15bf7bd2eb6974849b59d7575dea990d5d3af4c7f2ac752c65e46559d3f4ad1b"
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
