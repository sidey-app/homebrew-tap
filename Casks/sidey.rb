cask "sidey" do
  version "1.0.1"
  sha256 "81f2341d01d825335769a7acdfda8aa96e0807f3f474cceb69ba6458c6294fcf"

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
