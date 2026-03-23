cask "noxkey" do
  version "0.7.0"
  sha256 "3f58d98615eedf1ddb7e8f33e888aa807f7f2b73c4b13e9c705a606fadb48217"
  url "https://releases.noxkey.ai/v#{version}/NoxKey-#{version}.dmg?source=homebrew"
  name "NoxKey"
  desc "macOS Keychain secret manager with Touch ID"
  homepage "https://noxkey.ai"
  depends_on macos: ">= :ventura"
  app "NoxKey.app"
  binary "NoxKey.app/Contents/Resources/noxkey-cli", target: "noxkey"
  uninstall quit: "dev.noboxdev.Noxkey"
  zap trash: [
    "~/Library/Application Support/NoxKey",
    "~/Library/Preferences/com.noboxdev.NoxKey.plist",
    "~/.config/noxkey",
  ]
end
