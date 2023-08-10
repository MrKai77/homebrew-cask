cask "loop-development" do
  version :latest
  sha256 :no_check

  url "https://github.com/MrKai77/Loop/releases/download/development_build/Loop.zip"
  name "Loop"
  desc "Radial menu window manager"
  homepage "https://github.com/MrKai77/Loop"

  livecheck do
    url "https://github.com/MrKai77/Loop/releases/download/development_build/Loop.zip"
    strategy :header_match
  end

  auto_updates false
  conflicts_with cask: "loop"
  depends_on macos: ">= :ventura"

  app "Loop.app"

  uninstall quit: "com.MrKai77.Loop"

  zap trash: [
    "~/Library/Application Scripts/com.MrKai77.Loop",
    "~/Library/Application Support/Loop",
    "~/Library/Caches/com.MrKai77.Loop",
    "~/Library/HTTPStorages/com.MrKai77.Loop",
    "~/Library/Preferences/com.MrKai77.Loop.plist",
  ]
end