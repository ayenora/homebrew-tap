cask "screen-loupe" do
  version "1.5.1"
  sha256 "1b96f26634f0bba61cc496c0d0fdd76ec2d0d628218a0d4be704b463dcaaccd5"

  url "https://github.com/ayenora/screen-loupe/releases/download/v#{version}/ScreenLoupe-#{version}.dmg"
  name "Screen Loupe"
  desc "Live, pixel-true magnifier for any part of the screen"
  homepage "https://ayenora.github.io/screen-loupe/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "ScreenLoupe.app"

  zap trash: [
    "~/Library/Application Scripts/com.ayenora.screenloupe",
    "~/Library/Containers/com.ayenora.screenloupe",
  ]
end
