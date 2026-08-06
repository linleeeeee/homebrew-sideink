cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.13"
  sha256 arm:   "6f3d4c492907e66748abc619134fa2a7d9be55759c901e49e45d2db9b25b6acd",
         intel: "ffc9e362e2278747098043ded68e10833f85d52bb1174c19faf949838246f7e8"

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
