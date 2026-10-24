cask "mantash" do
  version "1.1.41"

  on_arm do
    sha256 "5fc6f7b41dcba4695d4b108bfba26d8c2e6a5adb6df1fe8ba7bc9467c78673f2"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "6d08efe3b9c44fcd6eb64fb5f1e7d4b80c6335dd2efd324af76e307c1efb434a"
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
