cask "harnessbridge" do
  version "1.7.0"

  on_arm do
    sha256 "6ec8e75e8e373a7a7743ba852cea04425fd275495aa93562b99cec27edac294c"

    url "https://github.com/Larrtroffen/harnessbridge/releases/download/v#{version}/HarnessBridge-#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "1bce84f118a15489bf91371de684b85fa5bf20f3f0c7707e805c038f920f195c"

    url "https://github.com/Larrtroffen/harnessbridge/releases/download/v#{version}/HarnessBridge-#{version}-macos-x86_64.dmg"
  end

  name "HarnessBridge"
  desc "Move AI agent sessions between 40+ coding harnesses"
  homepage "https://github.com/Larrtroffen/harnessbridge"

  depends_on macos: :ventura

  app "HarnessBridge.app"

  caveats <<~EOS
    HarnessBridge is ad-hoc signed and not notarized. On first launch macOS may
    block it; use right-click → Open, or run:
      xattr -dr com.apple.quarantine "/Applications/HarnessBridge.app"
  EOS
end
