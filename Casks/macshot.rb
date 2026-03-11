cask "macshot" do
  version "1.0.1"
  sha256 "f335850dd2cf80facc8d15d9b096760ba093fd4148512f00f3b4b316a7d9055e"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
