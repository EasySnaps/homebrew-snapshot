cask "easysnaps" do
  version "1.24.0"
  sha256 "f8d1648a5bc55257e42eb56ae9bdd5d565e53273fe067c538131c87f94044ff4"

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
