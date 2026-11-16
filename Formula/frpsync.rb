class Frpsync < Formula
  desc "Conservative bidirectional file synchronization for macOS and Linux"
  homepage "https://github.com/realmx/FrpSync-Releases"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/realmx/FrpSync-Releases/releases/download/v#{version}/frpsync_#{version}_darwin_arm64.tar.gz"
      sha256 "d4a9eac36a2f15f6ac4ae7a47bb8193b7aec4f38248faf5b54cb68dd5341029a"
    end
    on_intel do
      url "https://github.com/realmx/FrpSync-Releases/releases/download/v#{version}/frpsync_#{version}_darwin_amd64.tar.gz"
      sha256 "3dd95b0a81d580d3f18d264b0a0309d3e41ca6e429fc5fd31de0de3fc5c558b6"
    end
  end

  depends_on :macos

  def install
    bin.install "frpsync"
    (pkgshare/"examples").install Dir["examples/*"]
    pkgshare.install "README.md"
  end

  def caveats
    <<~EOS
      Configure and initialize both peers before enabling the service.
      Examples: #{opt_pkgshare}/examples
      Preview: frpsync run --config ~/.config/frpsync/macos.yaml

      brew services start frpsync enables synchronization writes (--apply).
      The service reads ~/.config/frpsync/macos.yaml. Do not run it with sudo.
      Before upgrading or uninstalling: brew services stop frpsync
      Configuration, synchronized files, and recovery state are preserved.
    EOS
  end

  service do
    run [opt_bin/"frpsync", "run", "--config",
         File.join(Dir.home, ".config/frpsync/macos.yaml"), "--apply"]
    keep_alive true
    working_dir Dir.home
    log_path var/"log/frpsync.log"
    error_log_path var/"log/frpsync.log"
  end

  test do
    assert_equal "FrpSync #{version}\n", shell_output("#{bin}/frpsync version")
    assert_match "FrpSync", shell_output("#{bin}/frpsync help")
  end
end
