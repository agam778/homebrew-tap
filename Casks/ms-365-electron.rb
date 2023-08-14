cask "ms-365-electron" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "6a5c8c9dac6aa37f94a3da64945ededc28e7f6c6a034f6c0655f2cfa40fd5e42",
         intel: "c40bbf9b07118b548061091eddc91e8dc4b32807f95281aefb69f130d606d9bf"

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
