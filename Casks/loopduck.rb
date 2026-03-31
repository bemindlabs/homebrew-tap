cask "loopduck" do
  version "0.1.3"

  on_arm do
    sha256 "f19a6170be07fbdbc49a934b44ac9fd4c33bd74e3cb4c777e00e5a47ae0cd18f"
    url "https://github.com/bemindlabs/openclaw-ai-dlc-app/releases/download/v#{version}/LoopDuck_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 :no_check
    url "https://github.com/bemindlabs/openclaw-ai-dlc-app/releases/download/v#{version}/LoopDuck_#{version}_x64.dmg"
  end

  name "LoopDuck"
  desc "AI coding workflow — knowledgeable in a broad field, with no limitations"
  homepage "https://buildonclaw.com/products/loopduck"

  app "LoopDuck.app"

  zap trash: [
    "~/Library/Application Support/com.bemindlabs.loopduck",
    "~/Library/Caches/com.bemindlabs.loopduck",
    "~/Library/Preferences/com.bemindlabs.loopduck.plist",
    "~/Library/Saved Application State/com.bemindlabs.loopduck.savedState",
  ]
end
