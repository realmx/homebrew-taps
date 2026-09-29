cask "mantash" do
  version "1.1.3"

  on_arm do
    sha256 "ceb7f42488c0daf82d78efcf3547e692a3ec18889e6d06ae3c94f94dfbd89539"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "611ee165ac62270fe335b1d848cbc9a9ecbf8636aacd40598c2c3bd0dacb49be"
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
