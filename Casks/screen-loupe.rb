cask "screen-loupe" do
  version "1.3.0"
  sha256 "3782e33844c797ba362786dada078c842280b1c0166ef6ec6d65625fb5099e28"

  url "https://github.com/ayenora/screen-loupe/releases/download/v#{version}/ScreenLoupe-#{version}.dmg"
  name "Screen Loupe"
  desc "Live, pixel-true magnifier for any part of the screen"
  homepage "https://ayenora.github.io/screen-loupe/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ScreenLoupe.app"

  zap trash: [
    "~/Library/Application Scripts/com.ayenora.screenloupe",
    "~/Library/Containers/com.ayenora.screenloupe",
  ]
end
