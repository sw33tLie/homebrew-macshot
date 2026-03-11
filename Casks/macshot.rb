cask "macshot" do
  version "1.2.5"
  sha256 "9818a489a5415b9fdfffd456cd379bfbbaedade805b9deaa2a0dd60a55563415"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
