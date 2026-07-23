cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.7"
  sha256 arm:   "c1eccdc143429b33cadb23e5d4579ae4be33f9a52e11df28b209ef90ccc8670c",
         intel: "41b5fdcc2bc7bc7f65548fc920292deb69ab034fcecd71c59635350fb2220bc4"

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
