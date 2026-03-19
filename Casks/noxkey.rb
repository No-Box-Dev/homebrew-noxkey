cask "noxkey" do
  version "0.6.31"
  sha256 "3bd19d8293156bc5fd0fd3171cda691faba59d8daf532d615684a808fb7b47a9"
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
