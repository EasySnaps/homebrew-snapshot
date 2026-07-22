cask "easysnaps" do
  version "1.19.1"
  sha256 :no_check

  url "https://easysnaps.org/downloads/EasySnaps.dmg"
  name "EasySnaps"
  desc "Screen capture and screenshot editor for macOS"
  homepage "https://easysnaps.org"

  livecheck do
    url "https://easysnaps.org/appcast/screenshot.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "EasySnaps.app"

  zap trash: [
    "~/Library/Application Support/EasySnaps",
    "~/Library/Preferences/snapdeck.plist",
    "~/Library/Caches/snapdeck",
    "~/Library/HTTPStorages/snapdeck",
    "~/Library/Saved Application State/snapdeck.savedState",
  ]
end
