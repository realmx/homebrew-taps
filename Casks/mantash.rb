cask "mantash" do
  version "1.1.30"

  on_arm do
    sha256 "ea71868aaede381a3631586bc25efbe621c9e967f1d7d71a630d218414a3a135"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "1547a2a9ec1ba4fa6cdb483cfa1f4f08b300f9ad3e0e65d81bc782d455568ac3"
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
