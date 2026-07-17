cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.2"
  sha256 arm:   "fc7745804401cb4e462e86f4816ed1832535acf7c4f5e3998a32a44b98ec554e",
         intel: "25a2dd0e7baf581a2a169d090a92aa28e6b96c8644e40ef3d379de05f6b92cb4"

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
