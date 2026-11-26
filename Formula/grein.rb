class Grein < Formula
  desc "Terminal workspace for branching AI sessions, git worktrees, and shells"
  homepage "https://github.com/rira/grein"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.3/grein-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "2980e0c41581b8f3c34b901e39d0dcc020adad7c4e120f2e0e2203ee68813735"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.3/grein-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "0b0d4c4af60eb7283cd526373e490ef240bffb12a2ec7ab49517734def60fbea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.3/grein-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "636ff18279f5075f0e5074e3244560387c0c9ebb42accc92dfed9fab441d297e"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.3/grein-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5566364d797684c3d13fa7df7b3e50c26fd5d8f3c25fedc3f769a22bccac6c58"
    end
  end

  def install
    bin.install "grein"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grein --version")
  end
end
