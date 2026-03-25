cask "noxkey" do
  version "0.8.11"
  sha256 "3d801b30a4afd012775cd082c5d4cd9ae6235963601f09b5518571a8e578c1a3"
  url "https://releases.noxkey.ai/v#{version}/NoxKey-#{version}.pkg?source=homebrew"
  name "NoxKey"
  desc "macOS Keychain secret manager with Touch ID"
  homepage "https://noxkey.ai"
  depends_on macos: ">= :ventura"
  pkg "NoxKey-#{version}.pkg"
  uninstall quit: "dev.noboxdev.Noxkey",
            pkgutil: "dev.noboxdev.NoxKey.pkg",
            delete: [
              "/Applications/NoxKey.app",
            ]
  zap trash: [
    "~/Library/Application Support/NoxKey",
    "~/Library/Preferences/com.noboxdev.NoxKey.plist",
    "~/.config/noxkey",
    "~/.local/bin/noxkey",
  ]
end
