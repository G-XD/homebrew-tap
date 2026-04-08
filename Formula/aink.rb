class Aink < Formula
    desc "CLI to track and analyze AI coding tool usage"
    homepage "https://github.com/g-xd/aink"
    version "0.0.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-aarch64.tar.gz"
        sha256 "91fb6796a1ea88ea41314f52ce20f6be8e02b429734487a87b688f8307d6bca4"
      else
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-x86_64.tar.gz"
        sha256 "cf50b01b98f6676ef0250d4e8936ba69e4ceb90f3bf941fb9fcc9a041d4402da"
      end
    end
  
    on_linux do
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-linux-x86_64.tar.gz"
        sha256 "59d70ed7083b682ba48afb88ed2eb0ebfebd50f3ea0c8aece5ef7f40ad12d955"
    end
  
    def install
      bin.install "aink"
    end
  
    test do
      system "#{bin}/aink", "--version"
    end
  end
