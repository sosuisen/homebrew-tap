class MvnArch < Formula
  desc "Wrapper CLI for mvn archetype:generate"
  homepage "https://github.com/sosuisen/mvn-arch"
  version "0.2.6"

  on_macos do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.6/mvn-arch-macos"
    sha256 "7bd483be6fabf04132183ed13fb5f4789abb3cf8924ead4b99da820d0ec836ca"
  end

  on_linux do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.6/mvn-arch-linux"
    sha256 "8d132bc16b9ec8032e990ad0ab37fc9e81a1297d947d0aad075862b756bb5efa"
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
