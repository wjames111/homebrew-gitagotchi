class Gitagotchi < Formula
  desc "Terminal Tamagotchi whose entire life is derived from your GitHub account"
  homepage "https://github.com/wjames111/gitagotchi"
  url "https://github.com/wjames111/gitagotchi/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "b2446e7561908a4879a09bbf8d9dc3f9dc098fa2bd3340aa17393b1ba35f66dd"
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
