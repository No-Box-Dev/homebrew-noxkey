cask "noxkey" do
  version "0.6.5"
  sha256 "aaae709ec7fa2e704d2f8708dd1c4b9ff571b90c42c54a22371f63808ca1d24e"

  url "https://releases.noxkey.ai/v#{version}/NoxKey-#{version}.dmg"
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
