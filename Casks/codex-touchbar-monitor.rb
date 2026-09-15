cask "codex-touchbar-monitor" do
  version "0.1.18"
  sha256 "3f9d3ed29139bd5609a8a53aa464353d187eb6fd3f11d30d6626fbdf6b8285aa"

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
