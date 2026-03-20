class MvnArch < Formula
  desc "Wrapper CLI for mvn archetype:generate"
  homepage "https://github.com/sosuisen/mvn-arch"
  version "0.0.7"

  on_macos do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.0.7/mvn-arch-macos"
    sha256 "e1c2e5ed0082985e6f20605e6a87cd9d7f24501ca21ba8bb72fb2f6a470136a5"
  end

  on_linux do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.0.7/mvn-arch-linux"
    sha256 "6f59e445673e4eeba39c34f524cac1be9ad291779219d305139e33bfc85624b2"
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
