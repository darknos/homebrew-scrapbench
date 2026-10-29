cask "scrapbench" do
  version "0.5.1"
  sha256 "120131ce596c99db0ae697da63f590c9922f2f4414e4dbf2ce82b5edcf222d87"

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
