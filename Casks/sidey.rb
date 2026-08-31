cask "sidey" do
  version "0.2.0-alpha.7"
  sha256 "05874b612c2c09bbc20d56c5ac96943a784b967bd0b18ee4ff37b17a955fd429"

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
