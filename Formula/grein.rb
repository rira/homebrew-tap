class Grein < Formula
  desc "Terminal workspace for branching AI sessions, git worktrees, and shells"
  homepage "https://github.com/rira/grein"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.2/grein-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "6b53a6d9c82941e17dd8e3b0eb9f507af0370574033a2fb61d7b572d1bfc2f6a"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.2/grein-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "64c6cd0f58d667b8c68028107a591aa12f850e931ae9bbd94dc4ca40e4a912e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.2/grein-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ba1b96f95eaa691c9156cdd0ccc8afcceafa9a19df998e016d7ec13f223162f"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.2/grein-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "363212bace1662fe856355323755b7c86c72c7a0a6796fb12dc96291e8ae988c"
    end
  end

  def install
    bin.install "grein"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grein --version")
  end
end
