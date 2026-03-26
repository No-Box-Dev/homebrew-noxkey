cask "noxkey" do
  version "0.8.20"
  sha256 "8cbe773f273a04bc93a720614d63b066aa4f25ad35573e076034b414eedd96f2"
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
              "~/.local/bin/noxkey",
            ]
  zap trash: [
    "~/Library/Containers/dev.noboxdev.Noxkey",
    "~/Library/Preferences/dev.noboxdev.Noxkey.plist",
    "~/.config/noxkey",
  ]
end
