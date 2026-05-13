cask "pouch" do
  version "2.1.1"
  sha256 "c958e9deef8764aacdb2a56ed051ef1dbf1b96490b540f807d352463fa2886d5"

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
