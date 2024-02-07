# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coinset < Formula
  desc "CLI for accessing the Chia blockchain."
  homepage "https://www.coinset.org/"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coinset-org/cli/releases/download/v0.0.5/coinset_Darwin_arm64.tar.gz"
      sha256 "b3432c454d1b5671722300bd5db3c0b2a2f00205d4d37a3bc5b25c0e4f540213"

      def install
        (bash_completion/"${BINARY_NAME}").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/${BINARY_NAME} completion zsh")
        (zsh_completion/"_${BINARY_NAME}").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/coinset-org/cli/releases/download/v0.0.5/coinset_Darwin_x86_64.tar.gz"
      sha256 "8c54087262336eb41d0183a426a4e58c3f273f2bee83d1ae1d1034435b1a3eb1"

      def install
        (bash_completion/"${BINARY_NAME}").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/${BINARY_NAME} completion zsh")
        (zsh_completion/"_${BINARY_NAME}").write output
        prefix.install_metafiles
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coinset-org/cli/releases/download/v0.0.5/coinset_Linux_x86_64.tar.gz"
      sha256 "8108ce3b8d0a938c8a4dd348b6e1273179221df23dbe3a50ce661fc74215b6c1"

      def install
        (bash_completion/"${BINARY_NAME}").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/${BINARY_NAME} completion zsh")
        (zsh_completion/"_${BINARY_NAME}").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/coinset-org/cli/releases/download/v0.0.5/coinset_Linux_arm64.tar.gz"
      sha256 "9b508ad66b0179d1abe4aeaa92cbca38e369cae21d220a7c831e30fbd31c6784"

      def install
        (bash_completion/"${BINARY_NAME}").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/${BINARY_NAME} completion zsh")
        (zsh_completion/"_${BINARY_NAME}").write output
        prefix.install_metafiles
      end
    end
  end
end
