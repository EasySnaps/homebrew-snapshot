cask "easysnaps" do
  version "1.21.0"
  sha256 "d2a3f4a9ed0700212ba78e7d459166b3a7f962dec3d7474646443fe0115749cd"

  url "https://easysnaps.org/downloads/EasySnaps-#{version}.dmg"
  name "EasySnaps"
  desc "Screen capture and screenshot editor for macOS"
  homepage "https://easysnaps.org"

  livecheck do
    url "https://easysnaps.org/appcast/screenshot.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "EasySnaps.app"

  zap trash: [
    "~/Library/Application Support/EasySnaps",
    "~/Library/Preferences/snapdeck.plist",
    "~/Library/Caches/snapdeck",
    "~/Library/HTTPStorages/snapdeck",
    "~/Library/Saved Application State/snapdeck.savedState",
  ]
end
