cask "mantash" do
  version "1.1.29"

  on_arm do
    sha256 "9d605e703ce94a48568d889b70800f1264a20a10c7e8e3f918485d28dfb4a3b3"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "bb6afb9c611d704925c9fd2816e7c114d00641c9f4544bf8d7f66751e264da0a"
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
