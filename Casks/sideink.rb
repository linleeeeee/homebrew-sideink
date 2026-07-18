cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.4"
  sha256 arm:   "8e4fb499196d27ddbd6db060c11ab743ec6e896b771b8266138ede0a94ae32a8",
         intel: "392f4f81415cefb7bafc9f45fbbc142f810ceaed2b2b6134dc64edfc8fc6ee5d"

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
