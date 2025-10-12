class Fortsh < Formula
  desc "Modern Unix shell implementation in Fortran with AST-based parsing"
  homepage "https://github.com/FortranGoingOnForty/fortsh"
  url "https://github.com/FortranGoingOnForty/fortsh/archive/refs/tags/v3.3.3.tar.gz"
  sha256 "8282e8a9cc810df04daf3ab36a6566fc3196998670318e03260abddb1da357fb"
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
