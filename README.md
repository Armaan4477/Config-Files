# Mac Configuration Setup Guide

This repository contains configuration files for setting up a Mac environment using Homebrew. Follow the instructions below to set up your Mac with these configurations.

## Show Hidden Files

First, you need to make hidden files visible to properly manage configuration files:

1. Open Terminal (Applications > Utilities > Terminal or use Spotlight search with Cmd+Space)

2. Run the following command to show hidden files in Finder:

```bash
defaults write com.apple.finder AppleShowAllFiles YES
```

3. Restart Finder to apply the changes:

```bash
killall Finder
```

Now you'll be able to see hidden files (those starting with a dot) in Finder.

## Download Files from this Repository

Download this repository to access the configuration files:

1. Go to the repository page on GitHub
2. Click the green "Code" button and select "Download ZIP"
3. Extract the ZIP file to a temporary location (like your Downloads folder)

## Transfer Configuration Files to Home Directory

Copy the hidden configuration files to your home directory:

1. Open Terminal and run the following commands:

```bash
cp /path/to/extracted/zip/.profile ~/
cp /path/to/extracted/zip/.zprofile ~/
cp /path/to/extracted/zip/.zshrc ~/
```

Replace `/path/to/extracted/zip/` with the actual path where you extracted the ZIP file.

## Install Xcode Command Line Tools

Install the Xcode Command Line Tools before installing Homebrew:

1. Open Terminal and run:

```bash
xcode-select --install
```

2. Click "Install" in the dialog box that appears
3. Wait for the installation to complete

## Install Homebrew

Now install Homebrew, the package manager for macOS:

1. In Terminal, run the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Follow the prompts on the screen to complete the installation

3. After installation, add Homebrew to your PATH (this should already be done by the .zprofile you copied):

```bash
eval "$(/opt/homebrew/bin/brew shellenv)"
```

4. Verify the installation by running:

```bash
brew --version
```

## Restore Applications with Brewfile

The Brewfile in this repository contains a list of applications, tools, and VS Code extensions to install on your Mac:

1. Copy the Brewfile to your home directory:

```bash
cp /path/to/extracted/zip/Brewfile ~/
```

2. Navigate to your home directory:

```bash
cd ~
```

3. Run the Brewfile to install all specified applications and tools:

```bash
brew bundle
```

4. Wait for all installations to complete. This might take some time depending on the number of applications and your internet speed.

## Restart Your Mac

After all installations are complete, restart your Mac to ensure all changes take effect:

1. Click the Apple menu in the top-left corner
2. Select "Restart..."
3. Click the "Restart" button in the dialog that appears

## What's Included

This repository includes:

- `.profile`: Configuration for Rye Python environment manager
- `.zprofile`: Sets up Homebrew in your shell environment
- `.zshrc`: Contains aliases, path configurations, and other shell customizations
- `Brewfile`: List of applications, tools, and VS Code extensions to install

## Troubleshooting

If you encounter any issues:

- For Xcode Command Line Tools installation problems, try downloading directly from [Apple Developer](https://developer.apple.com/download/all/)
- For Homebrew installation problems, visit [Homebrew Troubleshooting](https://docs.brew.sh/Troubleshooting)
- For Brewfile issues, try running `brew bundle --verbose` to see more detailed output
- If dotfiles aren't taking effect, make sure to restart your terminal or run `source ~/.zshrc`

## Customization

Feel free to modify the Brewfile and configuration files to suit your needs before running the installation commands.

## Summary of Steps

1. Show hidden files in Finder
2. Download repository ZIP file
3. Copy configuration files (.profile, .zprofile, .zshrc) to home directory
4. Install Xcode Command Line Tools
5. Install Homebrew
6. Restore applications using Brewfile
7. Restart your Mac