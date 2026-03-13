class Noxkey < Formula
  desc "macOS Keychain secret manager with Touch ID — CLI component"
  homepage "https://noxkey.ai"
  url "https://releases.noxkey.ai/v0.6.18/noxkey-cli?source=homebrew"
  sha256 "038a7536c4c8812572a8daba4f55c4d7376404a76d6ff963ffc19434a6861433"
  version "0.6.18"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "noxkey-cli" => "noxkey"
  end

  def post_install
    # Remove legacy CLI copy left by old installCLI() auto-install
    old = Pathname.new(Dir.home) / ".local/bin/noxkey"
    old.delete if old.exist?
  end

  def caveats
    <<~EOS
      The NoxKey menu bar app must be running for the CLI to work.
      Install it with: brew install --cask no-box-dev/noxkey/noxkey

      Make sure the app is running before using `noxkey` commands.
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/noxkey 2>&1", 1)
  end
end
