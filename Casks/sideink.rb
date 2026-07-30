cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.12"
  sha256 arm:   "3fdd64a40f3650b3ea70245dbc91c890b7386143565f13d11aaac1bdd2365fb4",
         intel: "d2f362746e4e5b9db7632353417ffae32400b99aacae540c593ab2c0ab4dcaae"

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
