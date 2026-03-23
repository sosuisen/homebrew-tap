class MvnArch < Formula
  desc "Wrapper CLI for mvn archetype:generate"
  homepage "https://github.com/sosuisen/mvn-arch"
  version "0.2.5"

  on_macos do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.5/mvn-arch-macos"
    sha256 "7c279e76148eb0ef68a1924355dc7403ea108a261b80d98cb4e7e704f556e211"
  end

  on_linux do
    url "https://github.com/sosuisen/mvn-arch/releases/download/v0.2.5/mvn-arch-linux"
    sha256 "856d1ef1ec7982705aac14a6280f264c42b8aedbe8768c20ec95a6fbcb5dbc2d"
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
