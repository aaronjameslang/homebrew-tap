class Proofr < Formula
  desc "Git hook to check conformance to http://chris.beams.io/posts/git-commit/"
  homepage "https://github.com/aaronjameslang/proofr"
  url "https://github.com/aaronjameslang/proofr/archive/2.0.0.tar.gz"
  sha256 "9903ed0524c358e940c85fbb56877b1c0f1656f23d0e0d3cdaa1bbc58cfdef4c"

  bottle do
    root_url "https://raw.githubusercontent.com/aaronjameslang/homebrew-tap/master/Bottle"
    cellar :any_skip_relocation
    sha256 "7acf85d6c0bef10d3d6d67a22650d5d9dce2fb8e2e20e3f3a4d8d32822760c67" => :x86_64_linux
  end

  def install
    cp_r "./.", prefix.to_s
  end

  test do
    cd prefix.to_s
    system "#{bin}/proofr", "test-messages/perfect.msg"
  end
end
