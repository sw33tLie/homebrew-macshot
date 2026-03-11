cask "macshot" do
  version "1.0.0"
  sha256 "5093721050e9b37fe05cd0bbffde67daf535f5bd0bf619dc6599a5f5e0b7b0d4"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
