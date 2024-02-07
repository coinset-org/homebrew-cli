# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coinset < Formula
  desc "CLI for accessing the Chia blockchain."
  homepage "https://www.coinset.org/"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coinset-org/cli/releases/download/v0.0.1/coinset_Darwin_arm64.tar.gz"
      sha256 "c326f42aa5676c5ae5aa47e7bec1b82a32d7d85ca67e9e6112db437c9b6ce496"

      def install
        bin.install "coinset"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/coinset-org/cli/releases/download/v0.0.1/coinset_Darwin_x86_64.tar.gz"
      sha256 "b7a8c275365175e5db915f08102d79ef1bfe64ad48533c270b7768193d47dfaa"

      def install
        bin.install "coinset"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/coinset-org/cli/releases/download/v0.0.1/coinset_Linux_arm64.tar.gz"
      sha256 "3f1b75eea02c96002ae74e2d78d866828857a39598a630cf4cc8ed7c9993d748"

      def install
        bin.install "coinset"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/coinset-org/cli/releases/download/v0.0.1/coinset_Linux_x86_64.tar.gz"
      sha256 "231e860ead4e0836c8298476d0ec06dfc3295fbe652c0db1a3e3317e2cf2a901"

      def install
        bin.install "coinset"
      end
    end
  end
end
