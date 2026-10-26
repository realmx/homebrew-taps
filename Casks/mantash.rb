cask "mantash" do
  version "1.1.43"

  on_arm do
    sha256 "83ca56c86bb1d6850c0a8aa9a47acd67aa6f01a6c54192a74308aefa43e96228"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "9f22aafa57d5a0befb2263de23198dea64c56667b533602b1b3eb1706d425af3"
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
