cask "macshot" do
  version "3.0.0"
  sha256 "a87faeab86980bc539760f3ab381599d66899ed7b55ad2b52bb09d0ea963e270"

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
