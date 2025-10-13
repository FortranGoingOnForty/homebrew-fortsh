class Fortsh < Formula
  desc "Modern Unix shell implementation in Fortran with AST-based parsing"
  homepage "https://github.com/FortranGoingOnForty/fortsh"
  url "https://github.com/FortranGoingOnForty/fortsh/archive/refs/tags/v5.1.0.tar.gz"
  sha256 "9d8efd259224cc3ca2da33a2b9689c16ebe90aee8ee9a61a2ad813553f542c31"
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
