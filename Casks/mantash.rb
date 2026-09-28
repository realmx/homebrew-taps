cask "mantash" do
  version "1.0.4"

  on_arm do
    sha256 "834bd0ae48f18234736e680ad3e7f186f295bcadfb4d51f0f424a915dbf361a7"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "c51326066f8bb81e91548e5ecafe2f56e92f8b65fa66d0e9abdfdb61ae092fe5"
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
