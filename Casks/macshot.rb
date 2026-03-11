cask "macshot" do
  version "1.0.3"
  sha256 "aac5c96a4d16274231c878462f9c2f7d16e8fe0def0c533cda51f691f7619de6"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
