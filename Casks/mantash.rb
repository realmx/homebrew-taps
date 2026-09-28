cask "mantash" do
  version "1.1.1"

  on_arm do
    sha256 "ed1eaee813a27ca669ff52cd46e799c470d61dd56be61e21d13a110a9a4c24d7"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "766e84dbc96ebefbc333a4f75ca2c32e462f0841051adff6a8e30d7544bf23f7"
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
