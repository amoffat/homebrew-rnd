class Supertag < Formula
  desc "Tag-based filesystem"
  homepage "https://amoffat.github.io/supertag/"
  url "https://github.com/amoffat/supertag/archive/v0.1.2.tar.gz"
  sha256 "5aeb12ed8e2b8d55b5e872432ca6ac633a2cbafe4edb8abbace2922c1bdd036b"
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
