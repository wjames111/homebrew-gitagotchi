class Gitagotchi < Formula
  desc "Terminal Tamagotchi whose entire life is derived from your GitHub account"
  homepage "https://github.com/wjames111/gitagotchi"
  url "https://github.com/wjames111/gitagotchi/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "d145d875ef6a40be0c2c43b4e054ee795f2f4455d17d688011a2fdae2ddb0eb8"
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
