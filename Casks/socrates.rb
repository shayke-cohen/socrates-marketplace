cask "socrates" do
  version "0.1.2"
  sha256 :no_check

  url "https://github.com/shayke-cohen/socrates-marketplace/releases/download/v#{version}/Socrates-#{version}-arm64.dmg",
      verified: "github.com/shayke-cohen/socrates-marketplace/"
  name "Socrates"
  desc "Socratic AI teaching platform with gamification and visual learning"
  homepage "https://github.com/shayke-cohen/socrates-marketplace"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Socrates.app"

  zap trash: [
    "~/Library/Application Support/Socrates",
    "~/Library/Preferences/com.socrates.desktop.plist",
    "~/Library/Caches/com.socrates.desktop",
  ]
end
