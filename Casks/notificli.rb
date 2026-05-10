cask "notificli" do
  version "1.4.1"
  sha256 "f115e07f8c1efa0239bb9af38f3960d74f8439d66aab57353c99b75444691214"

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
