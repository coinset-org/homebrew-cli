# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coinset < Formula
  desc "CLI for accessing the Chia blockchain."
  homepage "https://www.coinset.org/"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/coinset-org/cli/releases/download/v1.0.8/coinset_Darwin_x86_64.tar.gz"
      sha256 "5fa6bc6e244cdaefb241f139614ef4966733f1730c52867ad02ef21aa853ef2a"

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
      url "https://github.com/coinset-org/cli/releases/download/v1.0.8/coinset_Darwin_arm64.tar.gz"
      sha256 "a2e4624a8d0c335fbd2006c1a94bb476052919fdb5d263d06c0e87b02eba61ff"

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
        url "https://github.com/coinset-org/cli/releases/download/v1.0.8/coinset_Linux_x86_64.tar.gz"
        sha256 "2edb39075c8aa179bb7b8765bc782d54a18b38a20e9d9b1c4c9c9590f23277c4"

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
        url "https://github.com/coinset-org/cli/releases/download/v1.0.8/coinset_Linux_arm64.tar.gz"
        sha256 "9c8a2942eb14c9de070ad539cbf8b7df90032728bf94508ffec99246d2f7afe9"

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
