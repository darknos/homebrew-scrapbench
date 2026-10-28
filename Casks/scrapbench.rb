cask "scrapbench" do
  version "0.4.0"
  sha256 "50f6433c43ac2512eaa015ebc6bec26f09072eb7804250f209b50cf584828669"

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
