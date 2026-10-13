cask "codex-touchbar-monitor" do
  version "0.1.20"
  sha256 "05bad19bd7738794c27ccf492c95835573c5cc31500a33c7e4563070290e2d31"

  url "https://github.com/JokerNg/Codex-TouchBar-Monitor/releases/download/v#{version}/CodexTouchBarMonitor-#{version}.dmg"
  name "CodexTouchBarMonitor"
  desc "Monitor Codex usage on the MacBook Touch Bar"
  homepage "https://github.com/JokerNg/Codex-TouchBar-Monitor"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "CodexTouchBarMonitor.app"

  zap trash: [
    "~/Library/Application Support/CodexTouchBarMonitor",
    "~/Library/LaunchAgents/com.wangjiaxuan666.CodexTouchBarMonitor.Launcher.plist",
  ]
end
