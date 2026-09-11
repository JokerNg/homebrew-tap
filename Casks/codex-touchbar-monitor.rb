cask "codex-touchbar-monitor" do
  version "0.1.16"
  sha256 "d854bf48179f8a1ffc8fba6646b9a889985f5a43136915afb4f404186ada9d64"

  url "https://github.com/JokerNg/CodexTouchBarMonitor/releases/download/v#{version}/CodexTouchBarMonitor-#{version}.dmg"
  name "CodexTouchBarMonitor"
  desc "Monitor Codex usage on the MacBook Touch Bar"
  homepage "https://github.com/JokerNg/CodexTouchBarMonitor"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "CodexTouchBarMonitor.app"

  zap trash: [
    "~/Library/Application Support/CodexTouchBarMonitor",
    "~/Library/LaunchAgents/com.wangjiaxuan666.CodexTouchBarMonitor.Launcher.plist",
  ]
end
