cask "metalhudhelper" do
  version "1.1.0"
  sha256 "f9680014a680b1db8428d4d46ea312a08e4372efd4add869e9022ad008e59ec3"

  url "https://github.com/oliwonders/MetalHUDHelper/releases/download/v#{version}/MetalHUDHelper.app.zip",
      verified: "github.com/oliwonders/MetalHUDHelper/"
  name "MetalHUDHelper"
  desc "Menubar tool to enable/disable Apple's Metal HUD on macOS"
  homepage "https://github.com/oliwonders/MetalHUDHelper"

  depends_on macos: ">=:sequoia"

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
