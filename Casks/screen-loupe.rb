cask "screen-loupe" do
  version "1.5.0"
  sha256 "2b3e11b87cb4fa62d3ef3793d9626a199877e664d8a78ccf3b48e0576ea6a99a"

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
