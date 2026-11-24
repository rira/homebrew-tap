class Grein < Formula
  desc "Terminal workspace for branching AI sessions, git worktrees, and shells"
  homepage "https://github.com/rira/grein"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.1/grein-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "0ea1cdcca40d0fcaf70bf430b587ef75a13269e1a7162637351960bb30350968"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.1/grein-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "c1ecb58e1b211f3cf96a1f07f057210bf1f93d6696ead5ed353310cf43cf47c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.1/grein-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d258e1ab41bac2d739e6da5cc59127ac6a751fe8a7048d9934f2ccae8e421af3"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.1/grein-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c7ba9c9d07e1ca4848d227e4cec9ed8bae6634420732e4fe890730edf003ede"
    end
  end

  def install
    bin.install "grein"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grein --version")
  end
end
