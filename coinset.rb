# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coinset < Formula
  desc "CLI for accessing the Chia blockchain."
  homepage "https://www.coinset.org/"
  version "1.0.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/coinset-org/cli/releases/download/v1.0.14/coinset_Darwin_x86_64.tar.gz"
      sha256 "cc090d44db0088d07b018a7d956a02165891883722fea4450482b5c9dc18862f"

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
      url "https://github.com/coinset-org/cli/releases/download/v1.0.14/coinset_Darwin_arm64.tar.gz"
      sha256 "5f77ab7cdfd537a7abe9a3c23fc85157e557c1692e4919b2cd50f6659a35dd7d"

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
        url "https://github.com/coinset-org/cli/releases/download/v1.0.14/coinset_Linux_x86_64.tar.gz"
        sha256 "e2aed28dfc70fd8c01668efeb243b5acc4ecb0c6c297515b1ae350b879effd48"

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
        url "https://github.com/coinset-org/cli/releases/download/v1.0.14/coinset_Linux_arm64.tar.gz"
        sha256 "70abbec0a808d798016172d2f4938d1fd45ac94564871274d3375a310da93f78"

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
