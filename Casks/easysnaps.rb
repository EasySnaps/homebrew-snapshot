cask "easysnaps" do
  version "1.22.0"
  sha256 "0b241e6c1dfbe3b4bf774c0d9beea13be33db296305bac077788f54e07c80c5f"

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
