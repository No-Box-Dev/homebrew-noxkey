cask "noxkey" do
  version "0.6.21"
  sha256 "083301da0ba0ab524abf59e79dd24da64f2ca5cdb98f0a7fcfb4fda322babbc6"

  url "https://releases.noxkey.ai/v#{version}/NoxKey-#{version}.dmg?source=homebrew"
  name "NoxKey"
  desc "macOS Keychain secret manager with Touch ID"
  homepage "https://noxkey.ai"

  depends_on macos: ">= :ventura"

  app "NoxKey.app"

  zap trash: [
    "~/Library/Application Support/NoxKey",
    "~/Library/Preferences/com.noboxdev.NoxKey.plist",
    "~/.config/noxkey",
  ]
end
