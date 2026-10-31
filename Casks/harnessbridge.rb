cask "harnessbridge" do
  version "1.6.0"
  sha256 "ab855cb2e919e97abd726073c31045de7c62a65897abbc3e5dc87eb7bbae243b"

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
