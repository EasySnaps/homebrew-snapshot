cask "easysnaps" do
  version "1.23.0"
  sha256 "e3319dbb0ee70ab6ac9884a28ae5613f409675a2018124b9051db25020568c16"

  url "https://easysnaps.org/downloads/EasySnaps-#{version}.dmg"
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
