class Gitagotchi < Formula
  desc "Terminal Tamagotchi whose entire life is derived from your GitHub account"
  homepage "https://github.com/wjames111/gitagotchi"
  url "https://github.com/wjames111/gitagotchi/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "002c5012bae35f06ac41875364771a7d5725fdcad350865c618202fa2b4cf74c"
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
