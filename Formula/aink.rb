class Aink < Formula
    desc "CLI to track and analyze AI coding tool usage"
    homepage "https://github.com/g-xd/aink"
    version "0.0.3"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-aarch64.tar.gz"
        sha256 "b76151f558078d360034dec94cf2a6666c9013f5ef6e5d004162e99a10e52cd9"
      else
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-x86_64.tar.gz"
        sha256 "52bf206fd10b1af936bc8104869e66d21ed0a653057857c2e68b1adba69bbc2a"
      end
    end
  
    on_linux do
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-linux-x86_64.tar.gz"
        sha256 "78ae7134a840c39dfd6dca6baf9cfb9de0c7fdde7780b183cc0fa9e015c923cf"
    end
  
    def install
      bin.install "aink"
    end
  
    test do
      system "#{bin}/aink", "--version"
    end
  end
