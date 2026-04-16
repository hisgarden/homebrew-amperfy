# homebrew-amperfy

Homebrew tap for [hisgarden/amperfy](https://github.com/hisgarden/amperfy) — a personal fork of [Amperfy](https://github.com/BLeeEZ/amperfy), the open-source Subsonic/Ampache music client for Apple platforms.

Distributes a Mac Catalyst build signed with a personal Apple Developer team. Not notarized — see first-launch workaround below.

## Install

```sh
brew tap hisgarden/amperfy
brew install --cask amperfy
```

## First launch (Gatekeeper)

macOS will block the unsigned-by-Apple build on first launch. Pick one:

- **Right-click** `Amperfy.app` in `/Applications` → **Open** → **Open** again in the prompt.
- Or: `xattr -d com.apple.quarantine /Applications/Amperfy.app`

## Uninstall

```sh
brew uninstall --cask amperfy           # removes /Applications/Amperfy.app
brew uninstall --zap --cask amperfy     # also removes app user data
```

## Differences from upstream

- Signed with a personal Apple Developer team
- CarPlay disabled (personal teams can't issue the `com.apple.developer.carplay-audio` entitlement)
- Bundle ID: `dev.hisgarden.amperfy-music` (coexists with App Store Amperfy)
