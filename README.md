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
3. Open the downloads folder 
4. Extract the downloaded ZIP folder by double-clicking it

## Transfer Configuration Files to Home Directory

Copy the 4 configuration files to your home directory:

1. Open the extracted folder in Finder
2. Copy the following files to your home directory (also known as root folder):

.profile
.zprofile
.zshrc
Brewfile

3. Paste them into your home directory (you can access it by clicking "Go" in the Finder menu and selecting "Home" or using the shortcut Shift+Cmd+H)

4. If prompted, choose to replace existing files in your home directory.

5. Restart Terminal to apply the new configurations.

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

2. Follow the prompts on the screen to complete the installation.

3. Close and Open Terminal again to refresh the environment.

4. Verify the installation by running:

```bash
brew --version
```
example output: `Homebrew 4.6.13-4-g4747ead`

## Restore Applications with Brewfile

The Brewfile in this repository contains a list of applications, tools, and VS Code extensions to install on your Mac:

1. Run the Brewfile to install all specified applications and tools:

```bash
brew bundle --file=~/Brewfile
```

4. Wait for all installations to complete. This might take some time depending on your internet speed.

## Restart Your Mac

After all installations are complete, restart your Mac to ensure all changes take effect:

1. Click the Apple menu in the top-left corner
2. Select "Restart..."
3. Click the "Restart" button in the dialog that appears

## Checking if gcc and g++ works

1. Open Terminal
2. Type `gcc --version` and press Enter to check if gcc is installed and working
3. Type `g++ --version` and press Enter to check if g++ is installed and working

output should show the version information for both gcc and g++.

## Setting Up VS Code for C and C++ Development

After installing Visual Studio Code through the Brewfile, follow these steps to set it up for C and C++ development:

1. Open Visual Studio Code

2. Install the necessary extensions by pressing `Cmd+Shift+X` and searching for:
   - "C/C++" by Microsoft
   - "C/C++ Extension Pack" by Microsoft (includes debugger and other tools)
   - "Code Runner" (optional, for quickly running code snippets)

3. Create a project folder and open it in VS Code.

4. Create a configuration file for C/C++ settings:
   - Press `Cmd+Shift+P` to open the command palette
   - Type "C/C++: Edit Configurations" and select it
   - This creates a `.vscode` folder with a `c_cpp_properties.json` file
   - The default settings should work with the GCC compiler installed via Homebrew

5. Create a sample C++ file to test:
   - Create a new file named `hello.cpp`
   - Add this code:
   ```cpp
   #include <iostream>
   
   int main() {
       std::cout << "Hello, World!" << std::endl;
       return 0;
   }
   ```

6. To compile and run from VS Code:
   - Open the Terminal in VS Code with ``Ctrl+` ``
   - Compile with: `g++ hello.cpp -o hello`
   - Run with: `./hello`

7. For debugging:
   - Press `Cmd+Shift+P` and select "C/C++: Add Debug Configuration"
   - Choose "C/C++: (GDB/LLDB) Launch"
   - Set the program path to `${workspaceFolder}/hello`

8. For more advanced projects, you can set up:
   - `tasks.json` for build tasks
   - `launch.json` for debugging configurations
   - CMake integration for larger projects

VS Code should now be configured for C and C++ development, using the GCC compiler you previously installed.

## What's Included

This repository includes:

- `.profile`: Configuration for Rye Python environment manager
- `.zprofile`: Sets up Homebrew in your shell environment
- `.zshrc`: Contains aliases, path configurations, and other shell customizations
- `Brewfile`: List of applications, tools, and VS Code extensions to install
- `README.md`: This file
- `.gitignore`: File specifying untracked files to ignore in git

## Troubleshooting

Contact me if you encounter any issues during the setup process.