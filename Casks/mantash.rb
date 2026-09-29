cask "mantash" do
  version "1.1.5"

  on_arm do
    sha256 "b5c8b408d8e3738a5a3679ebe6cf58cb797c753fc64b1080e591d60324c06670"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "c1124b928e8f8a60e5f6b2157ed7df5be18e50d6d6f7f258f395185c3f26b77f"
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
