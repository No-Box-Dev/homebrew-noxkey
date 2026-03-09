cask "noxkey" do
  version "0.6.2"
  sha256 "50f12596b7c359cf91bc8eaef0886dd998d111b35a4363a77513daf7a480c0bd"

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
