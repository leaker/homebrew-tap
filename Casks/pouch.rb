cask "pouch" do
  version "2.1.3"
  sha256 "6f77500c2659fc3b54f2f07bd2ad1e73f12a3325b700b453de55aef957aa1f3f"

  url "https://github.com/leaker/pouch/releases/download/v#{version}/Pouch-#{version}.dmg"
  name "Pouch"
  desc "Desktop browser for tweaking any site — inject scripts, swap resources, persist overrides"
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
