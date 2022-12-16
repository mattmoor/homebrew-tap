# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.46"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.46/chainctl_darwin_amd64"
      sha256 "aefc6a9964b871413e3de3a95ef122080bac0b5740e436bc657f103065755769"

      def install
        bin.install "chainctl_darwin_amd64" => "chainctl_darwin_amd64"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.46/chainctl_darwin_arm64"
      sha256 "0765a44e8960c511e11fb0b39ea96002be6473cb8ad10ed1ade26fb351d3e439"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl_darwin_arm64"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.46/chainctl_linux_amd64"
      sha256 "60ae3da047dac13f47f8c1c1c1f5b733f8dd6637a86afe1189b7306f3757121f"

      def install
        bin.install "chainctl_linux_amd64" => "chainctl_linux_amd64"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.46/chainctl_linux_arm64"
      sha256 "3c9d49262787eca036ed153825033af4bb85a72dda0ee51fa58cb0805537bb60"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl_linux_arm64"
      end
    end
  end
end
