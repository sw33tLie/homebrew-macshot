cask "macshot" do
  version "1.2.6"
  sha256 "40b8c64abc456004807422c91a70f77e2af0f675db104128728946c21f4789ad"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
