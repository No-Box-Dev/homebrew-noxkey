cask "noxkey" do
  version "0.6.8"
  sha256 "f582d3793850371e5b4a95cca22c91e8a2c10f56619f96a1e2f7fcc88a0b1777"

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
