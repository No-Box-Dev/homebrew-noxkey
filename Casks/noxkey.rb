cask "noxkey" do
  version "0.6.25"
  sha256 "8ab6e442c6d627ad101c5d7ded69a585535583313e0bd8c9f8c7e7b8a9b3eee3"
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
