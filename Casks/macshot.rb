cask "macshot" do
  version "1.0.2"
  sha256 "086922fa0e0a940f9803ea585173bab1eab4a22b195ead9a9a9deb6dc14a6b51"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
