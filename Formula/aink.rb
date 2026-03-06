class Aink < Formula
    desc "CLI to track and analyze AI coding tool usage"
    homepage "https://github.com/g-xd/aink"
    version "0.0.4"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-aarch64.tar.gz"
        sha256 "4cac3e6111fe6cc64f7969ab083f02f62ffb14ded291a40a9a70b06da02f0659"
      else
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-x86_64.tar.gz"
        sha256 "a33b4891ec9e284a87a42ad9c2d9df786981e0c2913796c672c115b74f6b82e3"
      end
    end
  
    on_linux do
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-linux-x86_64.tar.gz"
        sha256 "65944105744b321665238354a489dbb2899706ca74f50c87b21738c74534b4b4"
    end
  
    def install
      bin.install "aink"
    end
  
    test do
      system "#{bin}/aink", "--version"
    end
  end
