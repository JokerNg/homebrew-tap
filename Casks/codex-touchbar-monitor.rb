cask "codex-touchbar-monitor" do
  version "0.1.19"
  sha256 "f98af39ac9a02f5faf5a449bdd49c82b1b27c7c21bbbd4697be37b9e106f357a"

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
