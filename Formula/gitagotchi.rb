class Gitagotchi < Formula
  desc "Terminal Tamagotchi whose entire life is derived from your GitHub account"
  homepage "https://github.com/wjames111/gitagotchi"
  url "https://github.com/wjames111/gitagotchi/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e946fe4f9989a96670f3696095e51b0fe81fc274deea228f09acbd372e5245dc"
  license "MIT"

  depends_on "bash"
  depends_on "jq"

  def install
    libexec.install Dir["gh-pet/*"]
    bin.install_symlink libexec/"gh-pet"
  end

  test do
    assert_match "gh-pet 1.0.0", shell_output("#{bin}/gh-pet --version")
  end
end
