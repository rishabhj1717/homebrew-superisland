cask "superisland" do
  version :latest
  sha256 :no_check
  arch arm: "arm64", intel: "amd64"

  url "https://github.com/shobhit99/superisland/releases/latest/download/SuperIsland-#{arch}.dmg",
      verified: "github.com/shobhit99/superisland/"
  name "SuperIsland"
  desc "Transform your Mac notch into a live, interactive island"
  homepage "https://dynamicisland.app"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "SuperIsland.app"

  zap trash: [
    "~/Library/Application Support/SuperIsland",
    "~/Library/Caches/SuperIsland",
    "~/Library/Preferences/com.shobhit99.superisland.plist",
    "~/Library/Saved Application State/com.shobhit99.superisland.savedState",
  ]
end
