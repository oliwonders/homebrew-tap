cask "metalhudhelper" do
  version "1.0.1"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/oliwonders/MetalHUDHelper/releases/download/v#{version}/MetalHUDHelper.app.zip",
      verified: "github.com/oliwonders/MetalHUDHelper/"
  name "MetalHUDHelper"
  desc "Menubar tool to enable/disable Apple's Metal HUD on macOS"
  homepage "https://github.com/oliwonders/MetalHUDHelper"

  depends_on macos: ">= 15.0"

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
