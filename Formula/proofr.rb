class Proofr < Formula
  desc "Git hook to check conformance to http://chris.beams.io/posts/git-commit/"
  homepage "https://github.com/aaronjameslang/proofr"
  url "https://github.com/aaronjameslang/proofr/archive/2.1.0.tar.gz"
  sha256 "9903ed0524c358e940c85fbb56877b1c0f1656f23d0e0d3cdaa1bbc58cfdef4c"

  def install
    cp_r "./.", prefix.to_s
  end

  test do
    cd prefix.to_s
    system "proofr test-messages/perfect.msg"
    system "make", "test"
  end
end
