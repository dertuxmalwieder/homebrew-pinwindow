cask "pinwindow" do
  version "1.0"
  sha256 "593291daad3fc232d16296bbb6549d4e2f7e954cc67e2d30d9f83ddf99a84b5c"

  url "https://github.com/justwy/PinWindow/releases/download/v#{version}/PinWindow-#{version}.dmg",
      verified: "github.com/justwy/PinWindow/"
  name "PinWindow"
  desc "Keep any macOS window always on top"
  homepage "https://github.com/justwy/PinWindow"

  depends_on macos: :ventura

  app "PinWindow.app"

  zap trash: [
    "~/Library/Preferences/com.justwy.pinwindow.plist",
    "~/Library/Caches/com.justwy.pinwindow",
  ]
end
