cask "mantash" do
  version "1.1.17"

  on_arm do
    sha256 "0c8d43d22972b040d2b92f111604caa6a9829e6d773726bdb801806914b4bc61"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "60a000d2792c8b7f61ede1eda24223fabc4c2b82c79ebfcd04cb1853644efbcc"
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
