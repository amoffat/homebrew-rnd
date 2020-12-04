class Supertag < Formula
  desc "Tag-based filesystem"
  homepage "https://amoffat.github.io/supertag/"
  url "https://github.com/amoffat/supertag/archive/v0.1.3.tar.gz"
  sha256 "3ecec8d40dbebfa8f865d68af09a4e92ae01d029a69aa59f99c0e1223b0d249a"
  license "AGPL-3.0-or-later"

  depends_on osxfuse: "3.11.2"
  depends_on "pkg-config"
  depends_on "rust" => "1.47.0"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tag", "--version"
  end
end
