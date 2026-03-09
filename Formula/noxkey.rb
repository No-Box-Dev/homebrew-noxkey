class Noxkey < Formula
  desc "macOS Keychain secret manager with Touch ID — CLI component"
  homepage "https://noxkey.ai"
  url "https://releases.noxkey.ai/v0.6.0/noxkey-cli"
  sha256 "58b003cafa6851ec4206ca540a9f8d87967b7cf920f246f0b7010bde27f1cc1c"
  version "0.6.0"
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
