cask "burrow" do
  version "1.0.0"
  sha256 "86575214aa684979584bc2513a4788a4f919e5c1c5e313553f37c17d402839b1"

  # Private-repo asset via API endpoint — needs HOMEBREW_GITHUB_API_TOKEN
  # (curl drops Authorization on the cross-host redirect to S3, so this works).
  # When the repo goes public, swap to the plain releases/download URL.
  url "https://api.github.com/repos/kla-bemindlabs/burrow/releases/assets/437821326",
      header: [
        "Accept: application/octet-stream",
        "Authorization: token #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}",
      ],
      verified: "api.github.com/repos/kla-bemindlabs/burrow/"
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
