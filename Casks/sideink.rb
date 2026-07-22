cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.6"
  sha256 arm:   "0bf0d3c0e3ab7df4a8e31b56730359e70f29d31a94d753bdfd16156a94cb7568",
         intel: "369ccb65b8a4f2d228fecbad137ccfd922f692b6d112241823f5e742e1dc60c8"

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
