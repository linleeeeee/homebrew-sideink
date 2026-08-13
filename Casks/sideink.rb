cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.16"
  sha256 arm:   "27b67868f5aae1aa0082246c49ccb649554bcfd95fd4cede0ca83742d3ea2cff",
         intel: "4303c14e8a4136f14debdf76b725e7b07832eb55a943fd3ecfef91effd52694e"

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
