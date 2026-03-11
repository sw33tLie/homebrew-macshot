cask "macshot" do
  version "1.1.1"
  sha256 "eedf11dbc97700224fe8b21634fb06f240b783da837b90b259b56c68cc09859e"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
