cask "noxkey" do
  version "0.6.30"
  sha256 "2ed459006449490012dcfbc5535f0d326daf0f7eea48be29382300d0b0c659b6"
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
