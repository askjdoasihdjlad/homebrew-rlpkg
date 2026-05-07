class Rlpkg < Formula
  desc "Description of rlpkg"
  homepage "https://github.com/askjdoasihdjlad/rlpkg"
  url "https://github.com/askjdoasihdjlad/rlpkg/releases/download/rlpkg1/rlpkg.tar.gz"
  version "1.0.0"
  sha256 "5714cafad29cbb0dfdad21f2342e62c2b6b326f23bafc75fc0559f9ae730d566"

  def install
    libexec.install Dir["rlpkg/*"]
  end

  test do
    assert_match "python", shell_output("#{bin}/rlpkg --help", 1)
  end
end
