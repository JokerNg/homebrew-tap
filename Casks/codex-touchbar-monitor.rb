cask "codex-touchbar-monitor" do
  version "0.1.17"
  sha256 "f32ca164820f76846d2c102e9cd1619a29df6c992439851b09cd092f497f4847"

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
