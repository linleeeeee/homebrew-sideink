cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.3"
  sha256 arm:   "c17db1e20e3c2db1c84fdc0b695d75214ccdd5d62b4dee58617bd813a5ca1d55",
         intel: "97ebe01e7c1b0f36944e4f5ce317d6920a8db496a44609e189a8836aad9af19b"

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
