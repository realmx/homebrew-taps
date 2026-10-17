cask "mantash" do
  version "1.1.27"

  on_arm do
    sha256 "2b97ec11e644765f38f265c222224aa9ec1068303b78585b275dbe98bfa2d0ca"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "e426f3a51d18aee89af0ccbf0c9f772a958eb3c34340b3794b7d7b7a2dd6c0bf"
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
