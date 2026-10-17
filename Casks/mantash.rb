cask "mantash" do
  version "1.1.26"

  on_arm do
    sha256 "e8de099b0b7458c9c3a3e09fab1ea223e7758aaf6ae4fc9a59dc0ba462c8000e"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "5be6bae12fe531c53ba5aca1a9fbcad5c18dc7dc6c8a8db100119b12d59e48db"
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
