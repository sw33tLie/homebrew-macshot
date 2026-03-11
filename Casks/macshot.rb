cask "macshot" do
  version "1.2.4"
  sha256 "bf1bca786cd76dcb84b6c9cdef79597e41cd1adf58b2c902702051f1405d4de7"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
