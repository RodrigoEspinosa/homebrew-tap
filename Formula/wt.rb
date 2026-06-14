class Wt < Formula
  desc "Git worktree manager powered by fzf"
  homepage "https://github.com/RodrigoEspinosa/wt"
  url "https://github.com/RodrigoEspinosa/wt/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "9ce57e4dce5bf6029b593f5f61e3bea347b1eddc28e34214eb6995c646e77174"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/wt"
    man1.install "doc/wt.1"
  end

  test do
    assert_match "wt 0.4.1", shell_output("#{bin}/wt -v")
  end
end
