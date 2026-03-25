cask "noxkey" do
  version "0.8.16"
  sha256 "80bb0419f13571127f9d6a79618a1ce2100c0cc1e5bb200d384fc9fc0de83f6b"
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
