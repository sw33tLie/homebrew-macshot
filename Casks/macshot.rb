cask "macshot" do
  version "1.0.4"
  sha256 "439c8969f2b991f87f2f920731339007b0050b9e100b39ee175eaa5b745ec3d9"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
