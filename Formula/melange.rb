# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.5.1/melange_0.5.1_darwin_amd64.tar.gz"
      sha256 "94b1541f6f397586dfbddccf24076fea5ba470cce4152a8835e561f1c8324f13"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.5.1/melange_0.5.1_darwin_arm64.tar.gz"
      sha256 "225bdfea6afb476e4d89db905c7d91a604a96c075aac6e2ca86fe73385930989"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.5.1/melange_0.5.1_linux_amd64.tar.gz"
      sha256 "1905fb376c084176b3ce6541ac501d499b5dd8cff16d8a26fb46e342a1ddc304"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.5.1/melange_0.5.1_linux_arm64.tar.gz"
      sha256 "e690975f57f5efc65c76e3b1aaf227fe60fa5a7f612e518f156f32220144ea42"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
