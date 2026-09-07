cask "codex-touchbar-monitor" do
  version "0.1.15"
  sha256 "cfda77bbd2adac83ecc1f9d5fd8f1ec1865493e952628e2b691073a489ac98f1"

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
