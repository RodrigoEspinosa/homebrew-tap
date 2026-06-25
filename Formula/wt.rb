class Wt < Formula
  desc "Git worktree manager powered by fzf"
  homepage "https://github.com/RodrigoEspinosa/wt"
  url "https://github.com/RodrigoEspinosa/wt/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "38585c013cefa5f04130fd2309c372c39034127de52bf662ae0f2493450a8a20"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/wt"
    man1.install "doc/wt.1"
  end

  test do
    assert_match "wt 0.4.2", shell_output("#{bin}/wt -v")
  end
end
