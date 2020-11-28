class Supertag < Formula
  desc "Tag-based filesystem"
  homepage "https://amoffat.github.io/supertag/"
  url "https://github.com/amoffat/supertag/archive/v0.1.0.tar.gz"
  sha256 "fc498f2443a5590d7e10c427ca7281b9b626326c6014049c9960d258e259c078"
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
