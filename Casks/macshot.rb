cask "macshot" do
  version "2.6.0"
  sha256 "86dc60e34c90652a38ea6a5d10491a4dc4421d7620f0abb96d7cfc624755a7ff"

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
