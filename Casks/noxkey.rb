cask "noxkey" do
  version "0.8.24"
  sha256 "4b3036a250742043612c902f51b0af74bd98319fba9570b58df0250e5113dffa"
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
