class Wt < Formula
  desc "Git worktree manager powered by fzf"
  homepage "https://github.com/RodrigoEspinosa/wt"
  url "https://github.com/RodrigoEspinosa/wt/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "bf63ed90245da6595b2fdde85a04efca87c2685b97cb92bedde8d49b175913ec"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/wt"
    man1.install "doc/wt.1"
  end

  test do
    assert_match "wt 0.6.0", shell_output("#{bin}/wt -v")
  end
end
