cask "notificli" do
  version "1.4.1"
  sha256 "de35791c4f96d6affe72930bb3f7e6d57f0bdef7b83023346cd7785ea7689bad"

  url "https://github.com/saihgupr/NotifiCLI/releases/download/v#{version}/NotifiCLI.dmg"
  name "NotifiCLI"
  desc "Command-line tool for macOS notifications"
  homepage "https://github.com/saihgupr/NotifiCLI"

  app "NotifiCLI.app"
  binary "#{appdir}/NotifiCLI.app/Contents/MacOS/NotifiCLI", target: "notificli"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/NotifiCLI.app"]
  end

  zap trash: "~/Library/Application Support/NotifiCLI"
end
