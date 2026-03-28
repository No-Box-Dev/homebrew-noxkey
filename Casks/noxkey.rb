cask "noxkey" do
  version "0.8.31"
  sha256 "eb9496a0fa7e1a25db4fc6315f8c68ba486d58ac03264f32f72af9af6412fdd7"
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
