class Frpsync < Formula
  desc "Conservative bidirectional file synchronization for macOS and Linux"
  homepage "https://github.com/realmx/FrpSync"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/realmx/FrpSync/releases/download/v#{version}/frpsync_#{version}_darwin_arm64.tar.gz"
      sha256 "c430137757b9404e61cbe73bd6b20042a61beccddbb5dde4098831e5e4901905"
    end
    on_intel do
      url "https://github.com/realmx/FrpSync/releases/download/v#{version}/frpsync_#{version}_darwin_amd64.tar.gz"
      sha256 "bb44b93290cc31310905303c09142c8191d019a3b85d77640987d848b29ffa79"
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
      Start with frpsync or brew services start frpsync, then open http://127.0.0.1:18730
      Configure and initialize both peers in the browser; no manual YAML is required.
      New pairs start in preview. Enable synchronization explicitly in the browser;
      your choice is saved and restored when the service restarts.
      The service uses ~/.config/frpsync/macos.yaml. Do not run it with sudo.
      Before upgrading or uninstalling: brew services stop frpsync
      Configuration, synchronized files, and recovery state are preserved.
    EOS
  end

  service do
    run [opt_bin/"frpsync", "start", "--config",
         File.join(Dir.home, ".config/frpsync/macos.yaml")]
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
