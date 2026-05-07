class Rlpkg < Formula
  desc "rlpkg"
  homepage "https://github.com/askjdoasihdjlad/rlpkg"
  url "https://github.com/askjdoasihdjlad/rlpkg/archive/refs/tags/rlpkg-r.tar.gz"
  version "2.0.0"
  sha256 "7d86d81d26e3d0b86960386a4a943629bf213349390e5b41fbf74d005f5e5f88"

  depends_on "python@3"

  def install
    # This moves all files from the GitHub-generated folder to libexec
    libexec.install Dir["rlpkg-rlpkg-r/*"]
  end

  test do
    system "#{bin}/rlpkg", "--version"
  end
end
