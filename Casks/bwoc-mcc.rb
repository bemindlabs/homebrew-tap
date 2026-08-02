cask "bwoc-mcc" do
  version "0.1.3"
  sha256 "709e20b723bc7be94e32c93c306a8bd3b59d0ba7d41ff04ed2c02d4df515a625"

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
