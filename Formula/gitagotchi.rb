class Gitagotchi < Formula
  desc "Terminal Tamagotchi whose entire life is derived from your GitHub account"
  homepage "https://github.com/wjames111/gitagotchi"
  url "https://github.com/wjames111/gitagotchi/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "218cd46f07fcb9d2882d86f3367cc5e8a421fa1ff171f3dc9fb01a15d0f5357d"
  license "MIT"

  depends_on "bash"
  depends_on "jq"

  def install
    libexec.install Dir["gh-pet/*"]
    bin.install_symlink libexec/"gh-pet"
  end

  test do
    assert_match "gh-pet", shell_output("#{bin}/gh-pet --version")
  end
end
