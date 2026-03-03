class Aink < Formula
    desc "CLI to track and analyze AI coding tool usage"
    homepage "https://github.com/g-xd/aink"
    version "0.0.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-aarch64.tar.gz"
        sha256 "13a1099b92943f3521b3ed54d3a7fec854406f5c57d6ce580548ea9aaca91150"
      else
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-x86_64.tar.gz"
        sha256 "35511f1e211c9eb66463ec478d3359f8598fd507b8ddd6e64f646d324a21f8d0"
      end
    end
  
    on_linux do
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-linux-x86_64.tar.gz"
        sha256 "cc54ba953c19c9b06e500849d38aa7f6ecde88a884b82483d714aea769f1c2bd"
    end
  
    def install
      bin.install "aink"
    end
  
    test do
      system "#{bin}/aink", "--version"
    end
  end