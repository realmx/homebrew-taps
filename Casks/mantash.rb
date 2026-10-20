cask "mantash" do
  version "1.1.31"

  on_arm do
    sha256 "a5240b19fdd9586be91f86d3a86c3e60398b4d175570aac336b344ac277efb99"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "80b05bab4d84093318d0d8205247c9478b87fc38c0d68a2f96eb6ba26efbd3ad"
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
