class Grein < Formula
  desc "Terminal workspace for branching AI sessions, git worktrees, and shells"
  homepage "https://github.com/rira/grein"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.4/grein-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "81d534680c32ca39cce8ad467c1cd54fa5cddb99cf25b3e168605bf804c22906"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.4/grein-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "6fc513714b8bce4340398a48e58b6270eb0b6a01e85339e39560d8b1aed75b28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rira/grein/releases/download/v0.1.4/grein-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4577387a89994d3682a90b7dbb1ace58fce49d8b61e4e23310e3050a54d5220"
    end

    on_intel do
      url "https://github.com/rira/grein/releases/download/v0.1.4/grein-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f70220d50d1cea2581d94d8c7fe3295acde906f1812c809d87df1b02f9e4143d"
    end
  end

  def install
    bin.install "grein"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grein --version")
  end
end
