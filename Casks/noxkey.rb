cask "noxkey" do
  version "0.8.35"
  sha256 "b246cc464c2c8cd9e628e84764a8de7cbaf5352a62a4b186ba10b242492b2d09"
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
