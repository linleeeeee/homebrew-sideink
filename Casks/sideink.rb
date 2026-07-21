cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.5"
  sha256 arm:   "2b78b2abb5b5bf7b9a204dbf0aa5076062ca8ad4c615cf541ad89ccf510dac2e",
         intel: "29c415e97d5e44120eeda0e2960e711b41c60dc2a0e6d429629a00ff4598e0e3"

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
