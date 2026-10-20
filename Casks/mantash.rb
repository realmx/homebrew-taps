cask "mantash" do
  version "1.1.33"

  on_arm do
    sha256 "54b650af0c529e49213fffbb91b8b0390352fe1446f4c6b948ad97b99d17ad0a"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "ed359ff371033aecd824af9a9ceb238cd4a390ad2fdc3aa83d974d82cc40363a"
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
