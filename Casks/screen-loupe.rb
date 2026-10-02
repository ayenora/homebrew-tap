cask "screen-loupe" do
  version "1.4.0"
  sha256 "e8a0f171675e208e4121f7d9bf0aa6e8128421c74d2ffcfb48ceae918c21507c"

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
