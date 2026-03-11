cask "macshot" do
  version "1.0.4"
  sha256 "f267e7dcf2c478eb3884d2c18c25ae671638ac425bc3849872bd52c401a660ba"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
