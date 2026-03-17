cask "noxkey" do
  version "0.6.23"
  sha256 "4e7e3b87f17325690597157deda6c801281c8612e8fb7bafd8fc1f22856134c2"
  url "https://releases.noxkey.ai/v#{version}/NoxKey-#{version}.dmg?source=homebrew"
  name "NoxKey"
  desc "macOS Keychain secret manager with Touch ID"
  homepage "https://noxkey.ai"
  depends_on macos: ">= :ventura"
  app "NoxKey.app"
  uninstall quit: "dev.noboxdev.Noxkey"
  zap trash: [
    "~/Library/Application Support/NoxKey",
    "~/Library/Preferences/com.noboxdev.NoxKey.plist",
    "~/.config/noxkey",
  ]
end
