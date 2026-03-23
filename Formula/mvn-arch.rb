class MvnArch < Formula
  desc "Wrapper CLI for mvn archetype:generate"
  homepage "https://github.com/sosuisen/mvn-arch"
  version "0.2.2"

  on_macos do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.2/mvn-arch-macos"
    sha256 "5a59ead6e47fcfc522bb189e25863fc483713fd168f64f1ba4c8617139cb3cfc"
  end

  on_linux do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.2/mvn-arch-linux"
    sha256 "38fdc89c1e5a78640ccc1e0e6a4c232e8bd23bcbda7d9830ea874f0d64c06ae3"
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
