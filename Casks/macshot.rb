cask "macshot" do
  version "1.5.0"
  sha256 "f8b1cef56667660781edff94f454853bea3bdd3e4e7f27cce2c0b9bb65c714f1"

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
