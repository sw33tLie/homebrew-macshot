cask "macshot" do
  version "1.4.3"
  sha256 "852e83e68fed79c01bc41dc47d37a3ba35d5273475f5117d4cfb22ecc63eae4c"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Application Support/com.sw33tlie.macshot",
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
