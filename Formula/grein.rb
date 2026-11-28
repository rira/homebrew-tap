class Grein < Formula
  desc "Terminal workspace for branching AI sessions, git worktrees, and shells"
  homepage "https://github.com/rira/grein"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.2.0/grein-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "cfc189ec9900f9472ebdf3bb9bc8813752b2ccbe41e4673e0b16058dde001da6"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.2.0/grein-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "fd0281493f0894ba1e0ee573ff58339952e6085ac79033d3ccff7cb2e25870f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.2.0/grein-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5ffc6e598cd0ff815b75780492d266f8c00253dc5eb6e35539cc853185c9a55"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.2.0/grein-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f401960950a9141ad6ef0b5d9a0d1cef61cef6c7e9fe27e6f0fd7ab907c5ac47"
    end
  end

  def install
    bin.install "grein"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grein --version")
  end
end
