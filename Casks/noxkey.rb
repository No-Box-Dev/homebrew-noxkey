cask "noxkey" do
  version "0.6.9"
  sha256 "4628a29dce48fd832467db51a13575e20c0e4aa128bfa941c571a88713b16cff"

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
