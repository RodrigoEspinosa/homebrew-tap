class Wt < Formula
  desc "Git worktree manager powered by fzf"
  homepage "https://github.com/RodrigoEspinosa/wt"
  url "https://github.com/RodrigoEspinosa/wt/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "377c9f0b147cd43c9357514e0bcc9fac7c2479a3dfe4df4e2fe4e447451d5f8b"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/wt"
    man1.install "doc/wt.1"
  end

  test do
    assert_match "wt 0.3.0", shell_output("#{bin}/wt -v")
  end
end
