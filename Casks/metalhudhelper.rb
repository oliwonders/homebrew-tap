cask "metalhudhelper" do
  version "1.0.2"
  sha256 "964fd3b175faf95e2e4e4f6f57b93cabeac138fa89902fa8b1e82a9531c4d950"

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
