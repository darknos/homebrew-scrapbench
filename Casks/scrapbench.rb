cask "scrapbench" do
  version "0.3.1"
  sha256 "fdcb86efb4c3aca5aaa4ce59673faacafe3cc88ef3a8a477b43e53412cb5806c"

  url "https://github.com/darknos/scrapbench/releases/download/v#{version}/Scrapbench-#{version}.zip"
  name "Scrapbench"
  desc "Workbench for text scraps, living in the macOS menu bar"
  homepage "https://github.com/darknos/scrapbench"

  depends_on macos: :sonoma

  app "Scrapbench.app"

  zap trash: [
    "~/Library/Application Support/Scrapbench",
    "~/Library/Preferences/org.nosenko.Scrapbench.plist",
  ]
end
