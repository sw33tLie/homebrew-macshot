cask "macshot" do
  version "1.0.0"
  sha256 "0a631beed62e010db3c29f1bc61d5c1be6b24abfefcf54b2fb6695325e734f4e"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
