cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.9"
  sha256 arm:   "c77371da3994f825a3581fb7e41559e84d3942a9b50a3ae60a0b71932bb30cc2",
         intel: "a6b35b455582221290e5f9d16071c9e9f38ef8b09fda23d5f361c9d5a8967375"

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
