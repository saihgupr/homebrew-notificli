cask "notificli" do
  version "1.4.1"
  sha256 "893ecbcb52974923e3279f39b45140d5b8254fa026366689f71238f40905452c"

  url "https://github.com/saihgupr/NotifiCLI/releases/download/v#{version}/NotifiCLI.dmg"
  name "NotifiCLI"
  desc "Command-line tool for macOS notifications"
  homepage "https://github.com/saihgupr/NotifiCLI"

  app "NotifiCLI.app"
  binary "#{appdir}/NotifiCLI.app/Contents/MacOS/notificli", target: "notificli"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/NotifiCLI.app"]
  end

  zap trash: "~/Library/Application Support/NotifiCLI"
end
