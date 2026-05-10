cask "notificli" do
  version "1.4.1"
  sha256 "571e1dbfb7dc0868f44ea256a856e2c2b5b2f1d6fd4a87766dc09fad0e27acd5"

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
