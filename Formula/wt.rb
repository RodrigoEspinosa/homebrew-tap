class Wt < Formula
  desc "Git worktree manager powered by fzf"
  homepage "https://github.com/RodrigoEspinosa/wt"
  url "https://github.com/RodrigoEspinosa/wt/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "d022128e197852b77126595657fa526c9af9b2128852b005b84ce5e177d961c0"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/wt"
    man1.install "doc/wt.1"
  end

  test do
    assert_match "wt 0.5.1", shell_output("#{bin}/wt -v")
  end
end
