class Rlpkg < Formula
  desc "Description of rlpkg"
  homepage "https://github.com/askjdoasihdjlad/rlpkg"
  url "https://github.com/askjdoasihdjlad/rlpkg/archive/refs/tags/rlpkg1.zip"
  sha256 "5714cafad29cbb0dfdad21f2342e62c2b6b326f23bafc75fc0559f9ae730d566"

  def install
    bin.install Dir["rlpkg/*"]
  end

  test do
    system "#{bin}/rlpkg", "--version"
  end
end
