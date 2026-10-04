class OpCache < Formula
  desc "Fast caching proxy for 1Password CLI op read commands"
  homepage "https://github.com/jlec/op-cache"
  license "MIT"
  head "https://github.com/jlec/op-cache.git", branch: "dev"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "caching proxy", shell_output("#{bin}/op-cache --help")
  end
end
