cask "scrapbench" do
  version "0.5.0"
  sha256 "f4ab415ec91985fad34782903a0740353c7e2ed910d07ccde82e00552197ef67"

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
