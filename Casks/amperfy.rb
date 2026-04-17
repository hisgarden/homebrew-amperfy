cask "amperfy" do
  version "2.1.1-hisgarden.4"
  sha256 "3782768ac6e3891fb94e96349d8b239b251346311b77fed39b0368ffcdfa7e00"

  url "https://github.com/hisgarden/amperfy/releases/download/v#{version}/Amperfy-v#{version}.zip"
  name "Amperfy"
  desc "Personal fork of Amperfy — Subsonic/Ampache music client (Mac Catalyst)"
  homepage "https://github.com/hisgarden/amperfy"

  app "Amperfy.app"

  caveats <<~EOS
    Signed and notarized by the fork maintainer (Developer ID: Jin Wen, NSDC3EDS2G).
    Installs cleanly — no Gatekeeper workaround required.

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
