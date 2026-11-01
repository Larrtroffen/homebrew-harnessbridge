cask "harnessbridge" do
  version "1.7.1"

  on_arm do
    sha256 "ef3d38015163ee5d572bd90a9a2fe8bb51aad4294feb7322d34ce9a937bb6915"

    url "https://github.com/Larrtroffen/harnessbridge/releases/download/v#{version}/HarnessBridge-#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "7902024bbab462a8fd0c97af33fba9493f3f3ee65de51db0dc11ebbba1b99104"

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
