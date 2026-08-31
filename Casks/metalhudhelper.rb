cask "metalhudhelper" do
  version "1.2.1"
  sha256 "b309558349395f9da028d747b4f7daf07113af7d09008de6a2728174e84f4b50"

  url "https://github.com/oliwonders/MetalHUDHelper/releases/download/v#{version}/MetalHUDHelper.app.zip",
      verified: "github.com/oliwonders/MetalHUDHelper/"
  name "MetalHUDHelper"
  desc "Menubar tool to enable/disable Apple's Metal HUD on macOS"
  homepage "https://github.com/oliwonders/MetalHUDHelper"

  depends_on macos: :sequoia

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MetalHUDHelper.app"

  zap trash: [
    "~/Library/Preferences/com.oliwonders.MetalHUDHelper.plist",
    "~/Library/Application Support/MetalHUDHelper",
    "~/Library/Logs/MetalHUDHelper",
  ]
end
