cask "focus-diff" do
  version "1.4.0"
  sha256 "31d9ebb8da962dc7823fa18c5c2ff64138e4f3187f7f3557a9f98f6449850d94"

  url "https://github.com/hyanmandian/focus-diff/releases/download/desktop-v#{version}/Focus-Diff.dmg"
  name "Focus Diff"
  desc "Review GitHub pull requests from the menu bar, without opening GitHub"
  homepage "https://focus-diff.com/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: :monterey

  app "Focus Diff.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Focus Diff.app"],
        must_succeed:   false,
        writable_paths: ["{{appdir}}/Focus Diff.app"]
  end

  uninstall quit: "com.focusdiff.app"

  zap trash: [
    "~/Library/Application Support/com.focusdiff.app",
    "~/Library/Caches/com.focusdiff.app",
    "~/Library/Logs/com.focusdiff.app",
    "~/Library/Preferences/com.focusdiff.app.plist",
    "~/Library/Saved Application State/com.focusdiff.app.savedState",
    "~/Library/WebKit/com.focusdiff.app",
  ]
end
