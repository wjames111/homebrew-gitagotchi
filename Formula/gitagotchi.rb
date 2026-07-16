class Gitagotchi < Formula
  desc "Terminal Tamagotchi whose entire life is derived from your GitHub account"
  homepage "https://github.com/wjames111/gitagotchi"
  url "https://github.com/wjames111/gitagotchi/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "9fd9d477aa0283ff9d9189a7ac52f72f170ab692627d55fd93cb9edfa3b85b32"
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
