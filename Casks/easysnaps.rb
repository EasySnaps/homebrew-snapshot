cask "easysnaps" do
  version "1.4.2"
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
    "~/Library/Application Support/com.easysnaps.screenshot",
    "~/Library/Preferences/com.easysnaps.screenshot.plist",
    "~/Library/Caches/com.easysnaps.screenshot",
    "~/Library/Saved Application State/com.easysnaps.screenshot.savedState",
  ]
end
