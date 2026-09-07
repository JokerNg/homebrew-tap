cask "codex-touchbar-monitor" do
  version "0.1.14"
  sha256 "a6b745e6a36ab0cbb50d0c0194aabef9f50f2ca99b10d9f0f468f386dc940f15"

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
