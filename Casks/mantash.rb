cask "mantash" do
  version "1.1.28"

  on_arm do
    sha256 "4a278e856396a5d18fa70ea4cce39ad6f82f4c761185d5be48429b2482615c75"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "df98015bc6633ebd9ef833f95a642367e7a89c04b8b990b3f7a5b75f7d4a7dfd"
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
