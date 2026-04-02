cask "macshot" do
  version "3.5.2"
  sha256 "9a51cfc793427be16f15121ed43f9b8a1f144a12a248d10548da2fc5bf30354d"

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
