# OSX defaults

# Disable menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false
# Disable press-and-hold for keys in favor of key repeat
defaults write -g ApplePressAndHoldEnabled -bool false
# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Show the ~/Library folder
chflags nohidden ~/Library
# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0
