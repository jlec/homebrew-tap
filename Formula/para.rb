class Para < Formula
  desc "Local, offline audio/video transcription via NVIDIA Parakeet + native CoreML"
  homepage "https://github.com/jlec/para"
  url "https://github.com/jlec/para/releases/download/v0.1.0/para-macos-arm64.tar.gz",
      using: GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "Apache-2.0"

  depends_on "ffmpeg"
  depends_on macos: :sonoma

  def install
    odie "para requires Apple Silicon" if Hardware::CPU.intel?
    bin.install "para"
  end

  test do
    system "#{bin}/para", "--list-models"
  end
end
