cask "superisland" do
  version "1.0.7"
  sha256 arm:
  "58cac70638abec0c95e638efd269874a4354c5a935c7ce9a70b52b5ca55982d6"
  arch arm: "arm64"

  url "https://github.com/shobhit99/superisland/releases/latest/download/SuperIsland.dmg",
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
