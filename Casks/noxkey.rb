cask "noxkey" do
  version "0.8.7"
  sha256 "922e2ee9fa350e6e44737ed2148b26cc9aef77ce9ed4c546e318ce5848e1cd9a"
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
