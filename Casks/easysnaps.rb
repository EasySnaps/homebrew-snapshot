cask "easysnaps" do
  version "1.4.1"
  sha256 "1a55648df7307455abaf2f5ea01d3e174095757219f1b244304f03090695a734"

  url "https://easysnaps.org/downloads/EasySnaps.dmg"
  name "EasySnaps"
  desc "Screen capture and screenshot editor for macOS"
  homepage "https://easysnaps.org"

  livecheck do
    url "https://easysnaps.org/appcast/screenshot.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "EasySnaps.app"

  zap trash: [
    "~/Library/Application Support/com.easysnaps.screenshot",
    "~/Library/Preferences/com.easysnaps.screenshot.plist",
    "~/Library/Caches/com.easysnaps.screenshot",
    "~/Library/Saved Application State/com.easysnaps.screenshot.savedState",
  ]
end
