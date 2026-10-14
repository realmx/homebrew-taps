cask "mantash" do
  version "1.1.23"

  on_arm do
    sha256 "86aacc0be14f48fc294645f6c042f29b1231f140408a2783475f459544d2ba36"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "c3613beb7cb1b8590b4d7ce49e1ad35c047a56eb6cd7562490ed004a2d0694a4"
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
