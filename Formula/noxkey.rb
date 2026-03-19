class Noxkey < Formula
  desc "macOS Keychain secret manager with Touch ID — CLI component"
  homepage "https://noxkey.ai"
  url "https://releases.noxkey.ai/v0.6.36/noxkey-cli?source=homebrew"
  sha256 "6c087af8ee25c2fd3f5f4561f1714b9ddfff44416f9d1a16a68afe203d017b37"
  version "0.6.36"
  license :cannot_represent
  depends_on :macos
  def install
    bin.install "noxkey-cli" => "noxkey"
  end
  def post_install
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
