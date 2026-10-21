cask "mantash" do
  version "1.1.34"

  on_arm do
    sha256 "eff902a690614f7bde3a85e785bd8c3ee7b27e6dc88a8a3a52bcb463ea581d6d"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "3ed733d228613c17c5c7cc769dd2523bdffbaa77153acb770f1af81bd71a41d5"
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
