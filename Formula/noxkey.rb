class Noxkey < Formula
  desc "macOS Keychain secret manager with Touch ID — CLI component"
  homepage "https://github.com/No-Box-Dev/Noxkey"
  url "https://github.com/No-Box-Dev/Noxkey/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "nbox-cli" => "noxkey"
  end

  def caveats
    <<~EOS
      The NoxKey menu bar app must be running for the CLI to work.
      Download it from: https://github.com/No-Box-Dev/Noxkey/releases

      Make sure the app is running before using `noxkey` commands.
    EOS
  end

  test do
    # CLI prints usage when called with no args
    assert_match "Usage:", shell_output("#{bin}/noxkey 2>&1", 1)
  end
end
