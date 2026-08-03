cask "bwoc-mcc" do
  version "0.1.4"
  sha256 "6ec049ab5186206e9c1bf9a92acfd5386242fe24b8b870bce978db77f392afc7"

  url "https://github.com/bemindlabs/bwoc-mcc/releases/download/v#{version}/BwocMcc-#{version}-universal.zip"
  name "BWOC Control Center"
  desc "SwiftUI macOS menu-bar control center for the BWOC agent fleet"
  homepage "https://github.com/bemindlabs/bwoc-mcc"

  depends_on macos: ">= :ventura"

  app "BwocMcc.app"

  zap trash: [
    "~/Library/Caches/tech.bemind.bwoc-mcc",
    "~/Library/Preferences/tech.bemind.bwoc-mcc.plist",
    "~/Library/Saved Application State/tech.bemind.bwoc-mcc.savedState",
  ]
end
