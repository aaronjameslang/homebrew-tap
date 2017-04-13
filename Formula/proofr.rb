class Proofr < Formula
  desc "Git hook to check conformance to http://chris.beams.io/posts/git-commit/"
  homepage "https://github.com/aaronjameslang/proofr"
  url "https://github.com/aaronjameslang/proofr/archive/2.1.0.tar.gz"
  sha256 "c1d9693a25abcac17d4e86a3e55c8d4c453cdfc221e0cff347b8715f9b310a75"

  def install
    cp_r "./.", prefix.to_s
  end

  test do
    cd prefix.to_s
    system "#{bin}/proofr", "test-messages/perfect.msg"
    system "make", "test"
  end
end
