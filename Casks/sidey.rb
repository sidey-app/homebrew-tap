cask "sidey" do
  version "0.2.0-alpha.5"
  sha256 "caee1e5b09a5e06758583c8d0ad87f789eded51e1719eebaad91169985c0c36b"

  url "https://github.com/sidey-app/SIDEY/releases/download/v#{version}/SIDEY-macOS-arm64-v#{version}.dmg"
  name "SIDEY"
  desc "Ambient overlay messenger for close friends"
  homepage "https://github.com/sidey-app/SIDEY"

  livecheck do
    skip "Alpha releases are published as GitHub pre-releases"
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SIDEY.app"

  uninstall quit:       "app.sidey.desktop",
            signal:     [["TERM", "app.sidey.desktop"]],
            on_upgrade: :signal
end
