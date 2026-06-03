cask "bwoc-mcc" do
  version "0.1.0"
  sha256 "c45b73eba21c2e746accf268bf9ba89bac7c0976e9bc24ecc033bf288e80d299"

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
