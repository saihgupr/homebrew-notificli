cask "notificli" do
  version "1.1.0"
  sha256 "c0c0169aa42946ff2d8c52f73c6ef70a48bf160e2fe96a8af49f107a5efa541b"

  url "https://github.com/saihgupr/NotifiCLI/archive/refs/tags/v#{version}.tar.gz"
  name "NotifiCLI"
  desc "Command-line tool for macOS notifications"
  homepage "https://github.com/saihgupr/NotifiCLI"

  # Build from source using build.sh
  installer script: {
    executable: "./build.sh",
    cwd:        "#{staged_path}/NotifiCLI-#{version}",
  }

  app "NotifiCLI-#{version}/build/NotifiCLI.app"
  binary "#{appdir}/NotifiCLI.app/Contents/MacOS/NotifiCLI", target: "notificli"

  zap trash: "~/Library/Application Support/NotifiCLI"
end
