cask "macshot" do
  version "1.0.7"
  sha256 "8ee81f19a234b12b7560b99641f704b75134d6bcbe6fba130f5d24cf3a78f087"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/macshot.zip"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  zap trash: [
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
