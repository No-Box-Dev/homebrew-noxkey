cask "noxkey" do
  version "0.6.8"
  sha256 "11c98a9f2e45562ab670f8643423efe4d65750806e57fb1411fbc66a29383b3d"

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
