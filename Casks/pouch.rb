cask "pouch" do
  version "2.0.0"
  sha256 "0fa5ee87fad54bd57cfb2805c7a7d2ce14610ad33165229816c35268b83f5fc9"

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
