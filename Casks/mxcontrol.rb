cask "mxcontrol" do
  version "0.1.1"
  sha256 "3a85b6c4413f3ae06e1a7e2b93f12c9ef5c6710050d83971b467ec0d7fa4d695"

  url "https://github.com/JokerNg/MXControl/releases/download/v#{version}/MXControl.dmg"
  name "MXControl"
  desc "Control Logitech HID++ devices"
  homepage "https://github.com/JokerNg/MXControl"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "MXControl.app"

  zap trash: "~/Library/Preferences/com.mxcontrol.app.plist"
end
