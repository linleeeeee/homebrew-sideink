cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.15"
  sha256 arm:   "6e9c2493371f80eb9ae50e3b45a33ca75a742fc60100a2c376351bbdfe0f632f",
         intel: "b1c54317e073bc080ee9d8e32eb1df040726a991f0c393f7af02a76c46e890ba"

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
