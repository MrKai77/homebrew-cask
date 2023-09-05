cask "loop" do
  version "1.0.0-beta.8"
  sha256 "6a254ea0e31b9ab17fccd44007b6adafac4b3c43fa0ff1806959d4fbb8e562d8"

  url "https://github.com/MrKai77/Loop/releases/download/#{version}/Loop.zip"
  name "Loop"
  desc "Radial menu window manager"
  homepage "https://github.com/MrKai77/Loop"

  livecheck do
    url "https://mrkai77.github.io/Loop/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
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
