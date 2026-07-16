cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "d24a4e3d3ef9d50404985215ef6fe8b570a25a039a6f61974acaa2c964402ce9",
         intel: "e491ca1c649f437cbbe677dc3475e6f1b2d72f02d709980dc786e8548130b82b"

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
