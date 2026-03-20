class MvnArch < Formula
  desc "Wrapper CLI for mvn archetype:generate"
  homepage "https://github.com/sosuisen/mvn-arch"
  version "0.0.8"

  on_macos do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.0.8/mvn-arch-macos"
    sha256 "f828cf85c441f81d9e4af0ec0b98b1ba8cf5cd3b849b98f19c7f34c0b4b793e1"
  end

  on_linux do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.0.8/mvn-arch-linux"
    sha256 "b987103b8b98feb8f911d31efe2005663e5a02176cfb1bde232dacc149a39b11"
  end

  def install
    if OS.mac?
      bin.install "mvn-arch-macos" => "mvn-arch"
    else
      bin.install "mvn-arch-linux" => "mvn-arch"
    end
  end

  test do
    assert_match "mvn-arch", shell_output("#{bin}/mvn-arch --version")
  end
end
