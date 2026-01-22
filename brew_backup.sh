# Backup homebrew packages
echo >"brew.txt"
brew leaves >>"brew.txt"

# Backup cask packages
echo >"cask.txt"
brew list -c >>"cask.txt"
