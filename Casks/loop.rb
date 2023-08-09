cask "loop" do
  version "1.0.0-beta.6"
  sha256 "ec5707e2159d16f8bc34ce554b3799d190c1238e2604ad6de52a0ee66ee7f4ec"

  url "https://github.com/MrKai77/Loop/releases/download/#{version}/Loop.zip"
  name "Loop"
  desc "Radial menu window manager"
  homepage "https://github.com/MrKai77/Loop"

  livecheck do
    url "https://mrkai77.github.io/Loop/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
