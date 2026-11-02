# Focus Diff for Homebrew

The [Homebrew](https://brew.sh) cask for [Focus Diff](https://focus-diff.com), the free and open source desktop app for reviewing GitHub pull requests.

```sh
brew install --cask hyanmandian/focus-diff/focus-diff
```

The app is universal (Apple Silicon and Intel) and needs macOS 12 or later. It updates itself; Homebrew installs it, and removes it with `brew uninstall --cask focus-diff`. Add `--zap` to also remove its settings and cache.

The app isn't notarized by Apple, so the cask clears macOS's quarantine flag after installing it, the same way the [install script](https://focus-diff.com/desktop.html) does. Every release's checksum is in this cask, and the build is attested on [GitHub](https://github.com/hyanmandian/focus-diff/releases).

This tap is updated by Focus Diff's release workflow. Issues go to [hyanmandian/focus-diff](https://github.com/hyanmandian/focus-diff/issues).
