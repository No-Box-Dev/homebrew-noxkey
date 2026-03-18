class Noxkey < Formula
  desc "macOS Keychain secret manager with Touch ID — CLI component"
  homepage "https://noxkey.ai"
  url "https://releases.noxkey.ai/v0.6.30/noxkey-cli?source=homebrew"
  sha256 "c04e5a9e2a84804d82764f39e854ff97266873b2b6187c697e2a9db8926f7553"
  version "0.6.30"
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
