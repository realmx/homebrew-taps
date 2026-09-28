cask "mantash" do
  version "1.0.0"

  on_arm do
    sha256 "a5fa8f14e9172a6239f86bd90bb0f54ad16a875f0f7ac5cc16190e14bb875fcf"
    url "https://github.com/realmx/MantaSH/releases/download/v#{version}/MantaSH-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "b63f500ccd79c7f946f3c685509e4a33b1749beb44bb554facc438ee8b2050ce"
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
