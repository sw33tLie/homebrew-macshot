cask "macshot" do
  version "3.0.4"
  sha256 "187bc7952689b8d7774e1d9d02689b6acf2889761f6556228bb310ed3d87c524"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/MacShot.dmg"
  name "macshot"
  desc "Native macOS screenshot tool inspired by Flameshot"
  homepage "https://github.com/sw33tLie/macshot"

  app "macshot.app"

  postflight do
    system_command "/usr/bin/mdimport", args: ["-i", "#{appdir}/macshot.app"]
    system_command "/usr/bin/open", args: ["#{appdir}/macshot.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.sw33tlie.macshot",
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
