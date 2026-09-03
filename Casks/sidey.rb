cask "sidey" do
  version "1.0.6"
  sha256 "f37003ba6d514edcbd3cf0a1ebf214e6beb7b0577b9462a4ecc15380844ca705"

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
