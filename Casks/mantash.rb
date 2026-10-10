cask "mantash" do
  version "1.1.21"

  on_arm do
    sha256 "28443fb5ce5a7eab5b1351f726503ea0320fd25cf9e81cd8cf5031470db33b0a"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "b6fb47ee43358f3dd83ccd5c34d7554c66d5c41094ec3821d5a8908acec42bc3"
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
