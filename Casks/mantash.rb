cask "mantash" do
  version "1.1.42"

  on_arm do
    sha256 "2ee0d7a8d99c3845129d455846199b0a47cedfbcf9869d25d822a9490d9df3d6"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "bc90b737d074a47ca970a881e7b6d091fd9c0c75680c0d875fea9f1f9d84f43a"
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
