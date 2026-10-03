class HerdrAgentPanes < Formula
  desc "Keep coding agents' dev servers and watchers in visible herdr panes"
  homepage "https://github.com/RodrigoEspinosa/herdr-agent-panes"
  url "https://github.com/RodrigoEspinosa/herdr-agent-panes/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "072eb46cbb81e0e881c14f211b661923a1392354cb21044f1bc8b25831c330e6"
  license "MIT"

  depends_on "jq"

  def install
    libexec.install Dir["*"], ".claude-plugin"
    # Hooks and the Claude marketplace point at opt_libexec, which survives
    # upgrades, so `brew upgrade` updates them in place.
    %w[herdr-agent-panes herdr-run].each do |cmd|
      (bin/cmd).write_env_script libexec/"bin"/cmd, HERDR_AGENT_PANES_ROOT: opt_libexec
    end
  end

  def caveats
    <<~EOS
      Wire it into Claude Code and Codex (run again after upgrades to resync
      ~/.codex/AGENTS.md; the hooks themselves update with brew):
        herdr-agent-panes install

      Before `brew uninstall`, remove the hooks:
        herdr-agent-panes uninstall

      Optional config: #{opt_libexec}/config.example.sh
        -> ~/.config/herdr-agent-panes/config.sh
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/herdr-agent-panes version").strip
    assert_equal opt_libexec.to_s, shell_output("#{bin}/herdr-agent-panes root").strip
    assert_match "not running inside a Herdr pane",
                 shell_output("env -u HERDR_ENV #{bin}/herdr-run --list 2>&1", 1)
  end
end
