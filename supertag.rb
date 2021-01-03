class Supertag < Formula
  desc "Tag-based filesystem"
  homepage "https://amoffat.github.io/supertag/"
  url "https://github.com/amoffat/supertag/archive/v0.1.4.tar.gz"
  sha256 "d8a724e0a85c0f2830eb943a17ed8f554f16a2f767392d64ded7251aa76b5715"
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
