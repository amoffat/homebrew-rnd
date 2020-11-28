class Supertag < Formula
  desc "Tag-based filesystem"
  homepage "https://amoffat.github.io/supertag/"
  url "https://github.com/amoffat/supertag/archive/v0.1.1.tar.gz"
  sha256 "75f595e40e5946a5177607aa58694360b945dd4427cec6d59def3d9317cccb17"
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
