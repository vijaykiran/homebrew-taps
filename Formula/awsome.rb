class Awsome < Formula
  desc "AWSome AWS TUI"
  homepage "https://github.com/vijaykiran/awsome-cli"
  version "0.4.0"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/vijaykiran/awsome-cli/releases/download/v0.4.0/awsome-0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "645d9189353063456e2359616fd06f9215659c70bde2341a2d832bea71fa43a1"
  elsif Hardware::CPU.arm?
    url "https://github.com/vijaykiran/awsome-cli/releases/download/v0.4.0/awsome-0.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "0475e2d2fff7c2dad39ae399410bc6525388ad2c8bbdee4d39b8ade662c61ff0"
  end

  def install
    bin.install "awsome"
  end

  test do
    system "#{bin}/awsome", "--version"
  end
end
