cask "harnessbridge" do
  version "1.6.2"
  sha256 "237d8abad4d9e991516f49ade22ba47ca5888abe88de60fc97af203d18d3d9e4"

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
