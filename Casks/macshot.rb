cask "macshot" do
  version "1.2.0"
  sha256 "e591a90bc11e0cacc03d5dd2b10ef4318b419b4426d372234d4a4f3007a94f1b"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
