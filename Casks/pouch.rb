cask "pouch" do
  version "2.1.2"
  sha256 "57125c05a2bdba1f7a8a1ca416fc6390d0fb68166dfc9dbd2ebcb02bde3589e5"

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
