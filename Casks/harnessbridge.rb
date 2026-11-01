cask "harnessbridge" do
  version "1.6.3"

  on_arm do
    sha256 "a409e78c283da0195256ef6761d36b58009a763d41312acec38abc4794c1d6e0"
    url "https://github.com/Larrtroffen/harnessbridge/releases/download/v#{version}/HarnessBridge-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "a493ff29904067c054b016be43f0b8aad50a6adac72a396e1d96076bd48b0051"
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
