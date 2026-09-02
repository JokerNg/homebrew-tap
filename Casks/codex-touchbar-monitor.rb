cask "codex-touchbar-monitor" do
  version "0.1.12"
  sha256 "69dc3b7f991e3f52e8a5a617ff1d344a10254d5488dbd746b988c9bcf55b95e8"

  url "https://github.com/JokerNg/CodexTouchBarMonitor/releases/download/v#{version}/CodexTouchBarMonitor-#{version}.dmg"
  name "CodexTouchBarMonitor"
  desc "Monitor Codex usage on the MacBook Touch Bar"
  homepage "https://github.com/JokerNg/CodexTouchBarMonitor"

  depends_on macos: :big_sur

  app "CodexTouchBarMonitor.app"

  zap trash: [
    "~/Library/Application Support/CodexTouchBarMonitor",
    "~/Library/LaunchAgents/com.wangjiaxuan666.CodexTouchBarMonitor.Launcher.plist",
  ]
end
