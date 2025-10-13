class Fortsh < Formula
  desc "Modern Unix shell implementation in Fortran with AST-based parsing"
  homepage "https://github.com/FortranGoingOnForty/fortsh"
  url "https://github.com/FortranGoingOnForty/fortsh/archive/refs/tags/v4.0.2.tar.gz"
  sha256 "4c490b76ee5ff1eb2b67f03975e408034e0e51296c9cf6cd274899c4ee87bacd"
  license "MIT"
  head "https://github.com/FortranGoingOnForty/fortsh.git", branch: "trunk"

  depends_on "gcc" # for gfortran

  def install
    # Build using release target for optimized build
    system "make", "release"

    # Install binary
    bin.install "bin/fortsh"

    # Install documentation
    doc.install "README.md"
  end

  test do
    # Test that fortsh can execute a simple command
    assert_match "fortsh", shell_output("#{bin}/fortsh --version 2>&1", 1)
  end
end
