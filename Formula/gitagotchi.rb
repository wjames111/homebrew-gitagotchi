class Gitagotchi < Formula
  desc "Terminal Tamagotchi whose entire life is derived from your GitHub account"
  homepage "https://github.com/wjames111/gitagotchi"
  url "https://github.com/wjames111/gitagotchi/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "e6b328f8fdf943557be91f1b06b3333d0fd54cc8bfa5e8d5aec0c546dadfbd7e"
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
