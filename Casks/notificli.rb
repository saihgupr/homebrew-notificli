cask "notificli" do
  version "1.4.0"
  sha256 "d3d8b53ba409d82612bf391a8cd957f7e560c69012cf001d5ce22b6e284290f1"

  url "https://github.com/saihgupr/NotifiCLI/archive/refs/tags/v#{version}.tar.gz"
  name "NotifiCLI"
  desc "Command-line tool for macOS notifications"
  homepage "https://github.com/saihgupr/NotifiCLI"

  # Build from source using build.sh
  installer script: {
    executable: "bash",
    args:       ["-c", "cd #{staged_path}/NotifiCLI-#{version} && ./build.sh"],
  }

  app "NotifiCLI-#{version}/build/NotifiCLI.app"
  binary "#{appdir}/NotifiCLI.app/Contents/MacOS/NotifiCLI", target: "notificli"

  zap trash: "~/Library/Application Support/NotifiCLI"
end
