cask "noxkey" do
  version "0.1.0"
  sha256 "174fb6ffbd29956938b00edb7cf7e8f04bd5fe80d27831574b87d13d84f3379d"

  url "https://github.com/No-Box-Dev/Noxkey/releases/download/v#{version}/NoxKey-#{version}.dmg"
  name "NoxKey"
  desc "macOS Keychain secret manager with Touch ID"
  homepage "https://noboxdev.com/tools/noxkey"

  depends_on macos: ">= :ventura"

  app "NoxKey.app"

  zap trash: [
    "~/Library/Application Support/NoxKey",
    "~/Library/Preferences/com.noboxdev.NoxKey.plist",
  ]
end
