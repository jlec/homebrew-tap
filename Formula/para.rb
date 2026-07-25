require_relative "../custom_download_strategy/private"

class Para < Formula
  desc "Local, offline audio/video transcription via NVIDIA Parakeet + native CoreML"
  homepage "https://github.com/jlec/para"
  url "https://github.com/jlec/para/releases/download/v0.1.1/para-macos-arm64.tar.gz",
      using: GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.1.1"
  sha256 "8ffecc6c596e9fa86f8a1ab7cff224294010b41ef17539ec75756eaaff44f5e4"
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
