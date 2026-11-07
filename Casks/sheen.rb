cask "sheen" do
  version "1.2.1"
  sha256 "a304b03b647413d6324e5b7317034c3e5335ceb1b74cc9798c5960a72cfc575f"

  url "https://github.com/danaenayati/sheen/releases/download/v#{version}/Sheen-#{version}.dmg"
  name "Sheen"
  desc "Free, open-source Mac cleaner, optimizer and malware scanner"
  homepage "https://github.com/danaenayati/sheen"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sheen.app"

  uninstall quit: [
    "io.github.danaenayati.sheen",
    "io.github.danaenayati.sheen.menu",
  ]

  zap trash: [
    "~/Library/Application Support/Sheen",
    "~/Library/Caches/io.github.danaenayati.sheen",
    "~/Library/HTTPStorages/io.github.danaenayati.sheen",
    "~/Library/Logs/Sheen",
    "~/Library/Preferences/io.github.danaenayati.sheen.plist",
    "~/Library/Preferences/io.github.danaenayati.sheen.shared.plist",
    "~/Library/Saved Application State/io.github.danaenayati.sheen.savedState",
  ]

  caveats <<~EOS
    Sheen is not notarized by Apple yet. On first launch open
    System Settings → Privacy & Security and click "Open Anyway".

    Some tools (Mail, browser privacy, Trash, Permissions) need
    Full Disk Access: System Settings → Privacy & Security → Full Disk Access.
  EOS
end
