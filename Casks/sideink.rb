cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.14"
  sha256 arm:   "e7b07ef070f0bc49bf0c6f7b1ebebd1cee285df28610c1eb92c826d567853e59",
         intel: "24f079a35c3d3fa6e2e831eed2080d655a0ea3a5b12d2704c9ee16c198fa6a11"

  url "https://github.com/linleeeeee/sideink-releases/releases/download/v#{version}/SideInk-#{arch}.dmg",
      verified: "github.com/linleeeeee/sideink-releases/"
  name "SideInk"
  desc "Floating to-do list that slides in from the screen edge"
  homepage "https://sideink.app/"

  livecheck do
    url "https://github.com/linleeeeee/sideink-releases/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SideInk.app"

  zap trash: [
    "~/Library/Application Support/done-and-seen",
    "~/Library/Caches/com.doneandSeen.app",
    "~/Library/Preferences/com.doneandSeen.app.plist",
    "~/Library/Saved Application State/com.doneandSeen.app.savedState",
  ]
end
