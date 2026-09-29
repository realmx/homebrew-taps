cask "mantash" do
  version "1.1.10"

  on_arm do
    sha256 "a0fc4858da8388a64806835e444cd1feca48eab8289e0b4ee2468d359228dd4c"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "2359b1a1d430f56ef97b6b29be7b8063e2da5697b5058697cd2a8693594d2b75"
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
