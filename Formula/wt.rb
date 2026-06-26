class Wt < Formula
  desc "Git worktree manager powered by fzf"
  homepage "https://github.com/RodrigoEspinosa/wt"
  url "https://github.com/RodrigoEspinosa/wt/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "424e3137124f6f5c5ff2b4ad589725bea80b08617bfec1a73de11a43ab184f66"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/wt"
    man1.install "doc/wt.1"
  end

  test do
    assert_match "wt 0.5.0", shell_output("#{bin}/wt -v")
  end
end
