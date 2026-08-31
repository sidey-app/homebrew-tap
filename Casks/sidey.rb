cask "sidey" do
  version "0.2.0-alpha.4"
  sha256 "0f34651c638b5fbfa9002a482db573f8a5afa71a4b3dfeb62ebaf001f31d7f00"

  url "https://github.com/sidey-app/SIDEY/releases/download/v#{version}/SIDEY-macOS-arm64-v#{version}.dmg"
  name "SIDEY"
  desc "Ambient overlay messenger for close friends"
  homepage "https://github.com/sidey-app/SIDEY"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SIDEY.app"

  uninstall quit: "app.sidey.desktop"
end
