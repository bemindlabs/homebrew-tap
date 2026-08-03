cask "bwoc-mcc" do
  version "0.1.5"
  sha256 "561bfd92e6445e8ee977df18128961860dcec8b0264ca99f6158b58ce47d734e"

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
