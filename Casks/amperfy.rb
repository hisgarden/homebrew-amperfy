cask "amperfy" do
  version "2.1.1-hisgarden.1"
  sha256 "81d90416678c0edc47e0eee203669ab156bd74b06274c86161f37aa0ab18dc54"

  url "https://github.com/hisgarden/amperfy/releases/download/v#{version}/Amperfy.app.zip"
  name "Amperfy"
  desc "Personal fork of Amperfy — Subsonic/Ampache music client (Mac Catalyst)"
  homepage "https://github.com/hisgarden/amperfy"

  app "Amperfy.app"

  caveats <<~EOS
    This build is signed with a personal Apple Developer team and is NOT notarized.
    On first launch, macOS Gatekeeper will block it.

    Workaround — pick one:
      • Right-click Amperfy.app in Applications → Open → Open again
      • Or: xattr -d com.apple.quarantine /Applications/Amperfy.app

    CarPlay is disabled in this build (personal teams cannot issue the CarPlay
    Audio entitlement). All other functionality works.
  EOS

  zap trash: [
    "~/Library/Containers/dev.hisgarden.amperfy-music",
    "~/Library/Application Scripts/dev.hisgarden.amperfy-music",
    "~/Library/Preferences/dev.hisgarden.amperfy-music.plist",
    "~/Library/Saved Application State/dev.hisgarden.amperfy-music.savedState",
  ]
end
