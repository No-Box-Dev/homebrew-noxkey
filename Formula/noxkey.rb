class Noxkey < Formula
  desc "macOS Keychain secret manager with Touch ID — CLI component"
  homepage "https://noxkey.ai"
  url "https://releases.noxkey.ai/v0.1.0/noxkey-cli"
  sha256 "d5e6795cb5d9685e447a4d8d1a90a73470886d7025a6339390a97460fc9324a6"
  version "0.1.0"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "noxkey-cli" => "noxkey"
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
