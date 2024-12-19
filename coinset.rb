# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coinset < Formula
  desc "CLI for accessing the Chia blockchain."
  homepage "https://www.coinset.org/"
  version "1.0.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/coinset-org/cli/releases/download/v1.0.11/coinset_Darwin_x86_64.tar.gz"
      sha256 "c8dedb0ee4a7e015f5e79b697f80456ac5fe306f42e6c44757f8d1d327ad2e44"

      def install
        bin.install "coinset" => "coinset"
        output = Utils.popen_read("SHELL=bash #{bin}/coinset completion bash")
        (bash_completion/"coinset").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/coinset completion zsh")
        (zsh_completion/"_coinset").write output
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/coinset-org/cli/releases/download/v1.0.11/coinset_Darwin_arm64.tar.gz"
      sha256 "b374335a61b18a6b7b216435a266d3a80051a8d20bf7925a4bbe36cc881e71f4"

      def install
        bin.install "coinset" => "coinset"
        output = Utils.popen_read("SHELL=bash #{bin}/coinset completion bash")
        (bash_completion/"coinset").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/coinset completion zsh")
        (zsh_completion/"_coinset").write output
        prefix.install_metafiles
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/coinset-org/cli/releases/download/v1.0.11/coinset_Linux_x86_64.tar.gz"
        sha256 "a6ea499fba15b0cc32665b08b772ea6ebd3167b432c99399d6e259e426e67afa"

        def install
          bin.install "coinset" => "coinset"
          output = Utils.popen_read("SHELL=bash #{bin}/coinset completion bash")
          (bash_completion/"coinset").write output
          output = Utils.popen_read("SHELL=zsh #{bin}/coinset completion zsh")
          (zsh_completion/"_coinset").write output
          prefix.install_metafiles
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/coinset-org/cli/releases/download/v1.0.11/coinset_Linux_arm64.tar.gz"
        sha256 "d96458b819d79e576d14a30e7f7db5e8fcdf543ec662c91456f2fb8783d1416a"

        def install
          bin.install "coinset" => "coinset"
          output = Utils.popen_read("SHELL=bash #{bin}/coinset completion bash")
          (bash_completion/"coinset").write output
          output = Utils.popen_read("SHELL=zsh #{bin}/coinset completion zsh")
          (zsh_completion/"_coinset").write output
          prefix.install_metafiles
        end
      end
    end
  end
end
