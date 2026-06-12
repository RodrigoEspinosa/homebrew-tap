class Wt < Formula
  desc "Git worktree manager powered by fzf"
  homepage "https://github.com/RodrigoEspinosa/wt"
  url "https://github.com/RodrigoEspinosa/wt/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "cf07d3598ab741dc8a21ca482b6f87b88b26006d68368ed4943fba2edf6745d4"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/wt"
    man1.install "doc/wt.1"
  end

  test do
    assert_match "wt 0.4.0", shell_output("#{bin}/wt -v")
  end
end
