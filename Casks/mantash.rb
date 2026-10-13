cask "mantash" do
  version "1.1.22"

  on_arm do
    sha256 "f6fbf92b1c75b9553b421229dd9bed1b57cd5a7b4937d0c5a14b2323865e26e1"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "3592f573a300bdcf41a1bce6503c51c5b0e2cb9ce7ec9d6679e0a44a9dbdfb80"
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
