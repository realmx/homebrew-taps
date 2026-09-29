cask "mantash" do
  version "1.1.14"

  on_arm do
    sha256 "6ce0f2a8518d1a72240fdfdc02a070d0cca5557d569c3f7918d9cc95dea08ca8"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "5ad12099345d39d1538d626b792ac63ffc750b58b08b4019b4bb3d564e58ade6"
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
