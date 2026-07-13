cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "212bda04f3ce9fdb6a2d25416cb83a715b5cdb0ad0ebcecc2482b5becd3bbe80",
         intel: "a9ec91b45e8956dd92c107faf29858adf5b2ff7ab4312ad1e572c91b757d22b8"

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
