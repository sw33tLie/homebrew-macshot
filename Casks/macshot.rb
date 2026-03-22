cask "macshot" do
  version "3.0.3"
  sha256 "6e931f2161917d68bde0d4103d6375f699dbf2f2f41fd142c0c23ea511a60b42"

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
