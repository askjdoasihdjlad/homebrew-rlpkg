class Rlpkg < Formula
  desc "rlpkg"
  homepage "https://github.com/askjdoasihdjlad/rlpkg"
  url "https://github.com/askjdoasihdjlad/rlpkg/archive/refs/tags/rlpkg-r.tar.gz"
  version "2.0.0"
  sha256 "7c22a86395ba15156ff9f9f9f94766e7c85cc0dbdd17d4e1a715353e93561c52"

  depends_on "python@3"

  def install
    # This moves all files from the GitHub-generated folder to libexec
    libexec.install Dir["rlpkg-rlpkg-r/*"]
  end

  test do
    system "#{bin}/rlpkg", "--version"
  end
end
