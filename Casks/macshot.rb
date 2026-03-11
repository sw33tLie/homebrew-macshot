cask "macshot" do
  version "1.0.6"
  sha256 "75a2df994372c02ee2765bc4c347f42bc5e86860b09e3cb475f30a918f7bf064"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
