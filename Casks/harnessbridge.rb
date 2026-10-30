cask "harnessbridge" do
  version "1.5.1"
  sha256 "1f5999c284642f859e860d31b222ad024f578d33b714f2c6220ecf72ed60e123"

  url "https://github.com/Larrtroffen/harnessbridge/releases/download/v#{version}/HarnessBridge-#{version}-macos-arm64.dmg"
  name "HarnessBridge"
  desc "Move AI agent sessions between 40+ coding harnesses"
  homepage "https://github.com/Larrtroffen/harnessbridge"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "HarnessBridge.app"

  caveats <<~EOS
    HarnessBridge is ad-hoc signed and not notarized. On first launch macOS may
    block it; use right-click → Open, or run:
      xattr -dr com.apple.quarantine "/Applications/HarnessBridge.app"
  EOS
end
