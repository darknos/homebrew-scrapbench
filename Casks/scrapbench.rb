cask "scrapbench" do
  version "0.4.1"
  sha256 "f98cd46530cd22be52b108c88fd3a0351792238c11dc4bd6029e69d75a4142ad"

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
