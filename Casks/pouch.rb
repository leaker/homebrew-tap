cask "pouch" do
  version "2.0.1"
  sha256 "154a11e136ba9c568c404fd6217aaad298e0c99d70a676ce8a131a0738d73d6e"

  url "https://github.com/leaker/pouch/releases/download/v#{version}/Pouch-#{version}.dmg"
  name "Pouch"
  desc "Desktop webview wrapper for web games with MITM proxy and script injection"
  homepage "https://github.com/leaker/pouch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Pouch.app"

  zap trash: [
    "~/Library/Application Support/Pouch",
    "~/Library/Caches/com.leelib.pouch",
    "~/Library/HTTPStorages/com.leelib.pouch",
    "~/Library/HTTPStorages/com.leelib.pouch.binarycookies",
    "~/Library/Preferences/com.leelib.pouch.plist",
    "~/Library/Saved Application State/com.leelib.pouch.savedState",
    "~/Library/WebKit/com.leelib.pouch",
  ]
end
