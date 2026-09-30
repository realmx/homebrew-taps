cask "mantash" do
  version "1.1.16"

  on_arm do
    sha256 "ff5eb6ad9182e02a2050f7d80045173bda4eb0b0e36e138c33bc68d029a7129b"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "8ab5b913688b35e8b05070e7b257b90524edac7a760a2dae38823f0b9be7fb92"
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
