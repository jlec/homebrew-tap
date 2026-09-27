cask "kraken-desktop" do
  version :latest
  sha256 :no_check

  url "https://desktop-downloads.kraken.com/latest/kraken-universal-apple-darwin.zip"
  name "Kraken Desktop"
  desc "Cryptocurrency exchange desktop trading app"
  homepage "https://www.kraken.com/desktop"

  livecheck do
    skip "No versioned downloads available"
  end

  depends_on :macos

  pkg "Kraken Desktop.pkg"

  uninstall pkgutil: "com.kraken.desktop"
end
