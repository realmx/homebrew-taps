cask "mantash" do
  version "1.1.32"

  on_arm do
    sha256 "d6e96c43aec7ea39941f7cd9f95414f8ae336301f3e2f2d157eeff50ea8f8649"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "c9ea1945ee4661d8b5516e5c9cb9b9885852d51d81750a42e264395ab08fc3e9"
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
