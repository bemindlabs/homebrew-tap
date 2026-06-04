cask "burrow" do
  version "1.0.0"
  sha256 "86575214aa684979584bc2513a4788a4f919e5c1c5e313553f37c17d402839b1"

  url "https://github.com/kla-bemindlabs/burrow/releases/download/v#{version}/BURROW.zip"
  name "BURROW: The Last Whistle"
  desc "2.5D prairie-dog platformer (Thai) built entirely by AI agents - Godot 4.6"
  homepage "https://github.com/kla-bemindlabs/burrow"

  app "BURROW.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/BURROW.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Godot/app_userdata/Burrow",
  ]
end
