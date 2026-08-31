cask "metalhudhelper" do
  version "1.2.0"
  sha256 "7dd8ecf8fa3ebdd4f88e8227edc07cb74bdb5f4640836ad8371c1aabe6fd5a0f"

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
