# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coinset < Formula
  desc "CLI for accessing the Chia blockchain."
  homepage "https://www.coinset.org/"
  version "1.0.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/coinset-org/cli/releases/download/v1.0.12/coinset_Darwin_x86_64.tar.gz"
      sha256 "a1f3f958780b7b2b65a1daa99c7f8ab0cbf99514f915f61b399e1a2e4084eef6"

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
      url "https://github.com/coinset-org/cli/releases/download/v1.0.12/coinset_Darwin_arm64.tar.gz"
      sha256 "632709d7433b31331ff983431d02168ef239dd6b14eb8fab481e51d541a292f8"

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
        url "https://github.com/coinset-org/cli/releases/download/v1.0.12/coinset_Linux_x86_64.tar.gz"
        sha256 "144c2654ea8c5a5caa3d460ab49585f38e38480eb493ab8d0cb365bab7c4e982"

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
        url "https://github.com/coinset-org/cli/releases/download/v1.0.12/coinset_Linux_arm64.tar.gz"
        sha256 "ff955447830204ec886dcfd325a2d02d071de61d8064488204e5ff6b7c8b7a2e"

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
