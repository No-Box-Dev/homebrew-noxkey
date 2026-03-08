cask "noxkey" do
  version "0.1.0"
  sha256 ""  # Will be filled when release is created

  url "https://github.com/No-Box-Dev/Noxkey/releases/download/v#{version}/NoxKey-#{version}.dmg"
  name "NoxKey"
  desc "macOS Keychain secret manager with Touch ID"
  homepage "https://github.com/No-Box-Dev/Noxkey"

  depends_on macos: ">= :ventura"

  app "NoxKey.app"

  postflight do
    # The app auto-installs the CLI to ~/.local/bin/noxkey on launch,
    # but also install via the formula for users who want it immediately
  end

  zap trash: [
    "~/Library/Application Support/NoxKey",
    "~/Library/Preferences/com.noboxdev.NoxKey.plist",
  ]
end
