cask "noxkey" do
  version "0.6.38"
  sha256 "c08bf6fccb8995479f18a5d2bbb9bcc186ae4a1fb37b0d3bd9e4444f9a1b1ef6"
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
