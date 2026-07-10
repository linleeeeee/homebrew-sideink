cask "sideink" do
  version "3.1.0"
  sha256 "17c511017b7ec112e7d626acd3522c3a0def3e22bc0e6dff863264fdd6d9d873"

  url "https://github.com/linleeeeee/sideink-releases/releases/download/v#{version}/SideInk-arm64.dmg",
      verified: "github.com/linleeeeee/sideink-releases/"
  name "SideInk"
  desc "Floating to-do list that slides in from the screen edge"
  homepage "https://sideink.app/"

  livecheck do
    url "https://github.com/linleeeeee/sideink-releases/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "SideInk.app"

  zap trash: [
    "~/Library/Application Support/done-and-seen",
    "~/Library/Caches/com.doneandSeen.app",
    "~/Library/Preferences/com.doneandSeen.app.plist",
    "~/Library/Saved Application State/com.doneandSeen.app.savedState",
  ]
end
