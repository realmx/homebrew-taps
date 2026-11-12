cask "mantash" do
  version "1.1.52"

  on_arm do
    sha256 "355810103ce583c0a5251f4961fd6c404eb02cb15dc4e1c569f1231170e7fd0f"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "644fe21d73a2f5dd15d92e10fe25ee37c4341aa3207f084c9a3d30ebe931d7a4"
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
