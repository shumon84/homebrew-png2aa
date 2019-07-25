class Png2aa < Formula
  desc ""
  homepage "https://github.com/shumon84/png2aa"
  url "https://github.com/shumon84/png2aa/archive/v1.2.tar.gz"
  version "1.2"
  sha256 "1fe2cd729c1dec19f3ef8f87927a4e839c9824971f24534f24204afcb8e2def4"
  depends_on "libpng"
  depends_on "jpeg"

  def install
    system "make"
    bin.install "png2aa"
  end

  test do
    system "#{bin}/png2aa", "test"
  end
end
