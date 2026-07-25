cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.10"
  sha256 arm:   "645b89283a3e5b47a3113074aff077a71c7feb25f9a6ef74fcd27ebfcf7866b7",
         intel: "58bc4354fa50c2e2dd647664d662ecb3fb1465fbc788cf504744bc1e99520731"

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
