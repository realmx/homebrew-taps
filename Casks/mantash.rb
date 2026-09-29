cask "mantash" do
  version "1.1.9"

  on_arm do
    sha256 "0f623f5c6e95457b9bcc5a3a9c97bcb0ca09ca0da870dae37e56059b37e27888"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "6cc4b0c2d95654342bcc05a5f70a8ecdb20608046e13dd6093470e2d674a1cdd"
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
