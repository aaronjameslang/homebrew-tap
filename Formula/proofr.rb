class Proofr < Formula
  desc "Git hook to check conformance to http://chris.beams.io/posts/git-commit/"
  homepage "https://github.com/aaronjameslang/proofr"
  url "https://github.com/aaronjameslang/proofr/archive/2.2.0.tar.gz"
  sha256 "777487a9c0bea1a9255e4bfe5cc7e1f541d1491257bbb2bd7bc45e78c36df9d4"

  def install
    cp_r "./.", prefix.to_s
  end

  test do
    cd prefix.to_s
    system "#{bin}/proofr", "test-messages/perfect.msg"
    system "make", "test"
  end
end
