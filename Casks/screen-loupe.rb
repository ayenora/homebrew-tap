cask "screen-loupe" do
  version "1.2.0"
  sha256 "60c1431c609e08d2f5c1da9b806ce6c2ea484d4804a7d7426a62ede01cb637b6"

  url "https://github.com/ayenora/screen-loupe/releases/download/v#{version}/ScreenLoupe-#{version}.dmg",
      verified: "github.com/ayenora/screen-loupe/"
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
