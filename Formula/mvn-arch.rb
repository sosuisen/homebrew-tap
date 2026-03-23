class MvnArch < Formula
  desc "Wrapper CLI for mvn archetype:generate"
  homepage "https://github.com/sosuisen/mvn-arch"
  version "0.2.3"

  on_macos do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.3/mvn-arch-macos"
    sha256 "f708be88083306a61029517f7e814bfed3760c94d2f5671f2149b5293b38a6ce"
  end

  on_linux do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.3/mvn-arch-linux"
    sha256 "9222f3b8256ef8af0301ff60b70fb4277dd25720cb035398af11bce4eb362f47"
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
