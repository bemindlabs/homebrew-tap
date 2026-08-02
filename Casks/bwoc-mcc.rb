cask "bwoc-mcc" do
  version "0.1.2"
  sha256 "3738e1f83cc20bf87d507e6ab992c2f1689872891e3185e7bc622f236b3b55e9"

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
