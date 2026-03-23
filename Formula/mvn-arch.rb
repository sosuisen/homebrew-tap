class MvnArch < Formula
  desc "Wrapper CLI for mvn archetype:generate"
  homepage "https://github.com/sosuisen/mvn-arch"
  version "0.2.4"

  on_macos do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.4/mvn-arch-macos"
    sha256 "965d2ee83fb7c683dbd5c3d942c858ab9ef95487ded698a3a00505af9a16b241"
  end

  on_linux do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.4/mvn-arch-linux"
    sha256 "213fbce2b724dd6820c850ae9532721676a0426d06387baab5eb5fb74c388e9e"
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
