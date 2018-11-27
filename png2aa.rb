class Png2aa < Formula
  desc ""
  homepage "https://github.com/shumon84/png2aa"
  url "https://github.com/shumon84/png2aa/archive/v1.2.tar.gz"
  version "1.2"
  sha256 "d7191f0a6bc6266acb187011f387fd6a8df8096cc3c8c1886016032e7275851e"
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
