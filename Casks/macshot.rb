cask "macshot" do
  version "1.1.0"
  sha256 "9c8c54d1b4fcad942c34c097abb0fd37b35395a7a37c3bf4951d717043806c1a"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
