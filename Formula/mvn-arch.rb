class MvnArch < Formula
  desc "Wrapper CLI for mvn archetype:generate"
  homepage "https://github.com/sosuisen/mvn-arch"
  version "0.1.0"

  on_macos do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.1.0/mvn-arch-macos"
    sha256 "411cbe88592b27a965f1d579213ed0894b8b4c65a9a464274a804384c02cfb6e"
  end

  on_linux do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.1.0/mvn-arch-linux"
    sha256 "07803107c1ac288f2a6aef8ee8ff66c45b690d6872dc627c36bc48fac684db11"
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
