cask "mantash" do
  version "1.1.39"

  on_arm do
    sha256 "de4f9a507bb02381beaf6c0198b4ddbfecaf36fce3c5c78de0cace688d4c7eba"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "90c0d4d0140979a9f529239b3a818b8b4d93b935ec935a0e5e81164f12b06951"
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
