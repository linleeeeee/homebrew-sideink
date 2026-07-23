cask "sideink" do
  arch arm: "arm64", intel: "x64"

  version "3.3.8"
  sha256 arm:   "5c27ae66ea356bbbb186bc2c8253a7f295bd898c394dccf3c864c1e319546dd8",
         intel: "b6f055246d015d1cc4cda63ea58a28dd5ab0ea517a402039b62513d09d74d38b"

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
