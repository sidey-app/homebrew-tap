cask "sidey" do
  version "1.0.4"
  sha256 "b3b7bf7645473afd9c0f48d87421fbcdd27693fece7f5c67a38e439935c9fd93"

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
