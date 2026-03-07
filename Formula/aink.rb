class Aink < Formula
    desc "CLI to track and analyze AI coding tool usage"
    homepage "https://github.com/g-xd/aink"
    version "0.0.5"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-aarch64.tar.gz"
        sha256 "b4a937eb46f16f192c9b213f9ee31361cbf86bb0708ecf114bfb99fb7d28c0b0"
      else
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-macos-x86_64.tar.gz"
        sha256 "4f4860d6f69795db8621fcf036284f4c1deee8bf774643f1c3bf31ee6de13851"
      end
    end
  
    on_linux do
        url "https://github.com/g-xd/aink/releases/download/v#{version}/aink-linux-x86_64.tar.gz"
        sha256 "73535a5057c0f1e51710ba4c1a31f111ace586fef4c920aac3c501b205d50476"
    end
  
    def install
      bin.install "aink"
    end
  
    test do
      system "#{bin}/aink", "--version"
    end
  end
