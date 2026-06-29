class Wt < Formula
  desc "Git worktree manager powered by fzf"
  homepage "https://github.com/RodrigoEspinosa/wt"
  url "https://github.com/RodrigoEspinosa/wt/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "75118d9e3d2746672cff99da3db1e3342cfbe1fccc680e32a7020ce3c22c98cc"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/wt"
    man1.install "doc/wt.1"
  end

  test do
    assert_match "wt 0.6.1", shell_output("#{bin}/wt -v")
  end
end
