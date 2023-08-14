cask "ms-365-electron" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "6a5c8c9dac6aa37f94a3da64945ededc28e7f6c6a034f6c0655f2cfa40fd5e42",
         intel: "71bc79d0a230c0ebe540b58ded259eb7907b7fd417ef7deb1f16db8f35fee88c"

  url "https://github.com/agam778/MS-365-Electron/releases/download/v#{version}/MS-365-Electron-v#{version}-mac-#{arch}.dmg"
  name "MS-365-Electron"
  desc "Unofficial Microsoft 365 Web Desktop Wrapper made with Electron"
  homepage "https://github.com/agam778/MS-365-Electron"

  livecheck do
    url "https://github.com/agam778/MS-365-Electron/releases/download/v#{version}/latest-mac.yml"
    strategy :electron_builder
  end

  app "MS-365-Electron.app"

  zap trash: [
    "~/Library/Logs/ms-365-electron",
    "~/Library/Preferences/com.agampreet.ms-365-electron.plist",
    "~/Library/Saved Application State/com.agampreet.ms-365-electron.savedState",
  ]
end
