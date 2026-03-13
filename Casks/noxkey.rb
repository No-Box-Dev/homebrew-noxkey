cask "noxkey" do
  version "0.6.19"
  sha256 "9e4664e5a1b8b518adc9f4c2ac3e326b417abe4e36a2f538b49c373a2fe40a8b"

  url "https://releases.noxkey.ai/v#{version}/NoxKey-#{version}.dmg?source=homebrew"
  name "NoxKey"
  desc "macOS Keychain secret manager with Touch ID"
  homepage "https://noxkey.ai"

  depends_on macos: ">= :ventura"

  app "NoxKey.app"

  zap trash: [
    "~/Library/Application Support/NoxKey",
    "~/Library/Preferences/com.noboxdev.NoxKey.plist",
  ]
end
