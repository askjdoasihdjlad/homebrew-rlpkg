class Rlpkg < Formula
  desc "Description of rlpkg"
  homepage "https://github.com/askjdoasihdjlad/rlpkg"
  url "https://github.com/askjdoasihdjlad/rlpkg/archive/refs/tags/rlpkg1.zip"
  sha256 "33a364c75b537335e1f6ee80078b0d8552e5eab55302a615d1033c67df5d005c"

  def install
    bin.install Dir["rlpkg/*"]
  end

  test do
    system "#{bin}/rlpkg", "--version"
  end
end
