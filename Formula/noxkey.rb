class Noxkey < Formula
  desc "macOS Keychain secret manager with Touch ID — CLI component"
  homepage "https://noxkey.ai"
  url "https://releases.noxkey.ai/v0.8.41/noxkey-cli?source=homebrew"
  sha256 "85a494888cc98f9512b8036207a7382de1b2eba6c2a564bea99d2a41e4429fc6"
  version "0.8.41"
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
