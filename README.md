# Homebrew Tap 
A custom tap for Homebrew

# Install
Via Homebrew:

```bash
# For all casks
$ brew tap agam778/tap

# For a single cask
$ brew install --cask agam778/tap/[package]

# For a single cask with no repository
$ brew install --cask "https://raw.githubusercontent.com/agam778/homebrew-tap/main/Casks/[package].rb"
```

# Available Casks
- [MS-365-Electron](https://github.com/agam778/MS-365-Electron)
  
## Updates
To check for new updates for any of the casks or formulae, run the following command:

```shell
brew livecheck --tap agam778/tap
```

If an update is available, you can open a pull request using the `brew bump-cask-pr` command.

## License
This repository has the MIT License. Please see [License File](LICENSE.md) for more information.