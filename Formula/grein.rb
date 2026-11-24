class Grein < Formula
  desc "Terminal workspace for branching AI sessions, git worktrees, and shells"
  homepage "https://github.com/rira/grein"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.0/grein-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "57323617baa7ab68b126fc29e22eb0320579417921dabd0d725660f9b1d22b6c"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.0/grein-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "41c3b7a0b6ff59de22bbb1531012c2ab811efeabea8350e4682376bfb4877f14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.0/grein-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d7c8c4701433c4f7bb25b8f5c6a8a38b3ea849e13dafddd3b3739c9374abf0f"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.0/grein-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "705781569903b8223cb9f09fabf8d1b1ca74feaeb294b59c6c51aa576f59d866"
    end
  end

  def install
    bin.install "grein"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grein --version")
  end
end
