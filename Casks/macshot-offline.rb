cask "macshot-offline" do
  version "4.2.0"
  sha256 "ca01b0d83d7ea9f0c435e4fcb7b94cbab0af12d7b48182d9520d035f1006893d"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/MacShot-Offline.dmg"
  name "macshot Offline"
  desc "Native macOS screenshot tool without upload integrations"
  homepage "https://github.com/sw33tLie/macshot"

  livecheck do
    url "https://raw.githubusercontent.com/sw33tLie/macshot/main/appcast-offline.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "macshot Offline.app"

  uninstall quit: "com.sw33tlie.macshot.offline"

  zap trash: [
    "~/Library/Application Scripts/com.sw33tlie.macshot.offline",
    "~/Library/Containers/com.sw33tlie.macshot.offline",
    "~/Library/Preferences/com.sw33tlie.macshot.offline.plist",
  ]
end
