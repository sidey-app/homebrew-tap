cask "sidey" do
  version "1.0.3"
  sha256 "b888c26b44f77a304f3f8cce76eab2a41ff7ca50e027ea5b2beba877a47dbec4"

  url "https://github.com/sidey-app/SIDEY/releases/download/v#{version}/SIDEY-macOS-arm64-v#{version}.dmg"
  name "SIDEY"
  desc "Ambient overlay messenger for close friends"
  homepage "https://github.com/sidey-app/SIDEY"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SIDEY.app"

  uninstall quit:       "app.sidey.desktop",
            signal:     [["TERM", "app.sidey.desktop"]],
            on_upgrade: :signal
end
