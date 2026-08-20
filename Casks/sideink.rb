cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.17"
  sha256 arm:   "f94b59f11fbce34ec2dc715db5baba3b8a2ae71a76920d030730e339cb61cf7c",
         intel: "231cf430adfbb3addd2f90fb8c2fe279a4059dd05682ebcc8ad72bc42c6d03e5"

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
