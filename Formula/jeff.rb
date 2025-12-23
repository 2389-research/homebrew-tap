# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.1%2Fjeff_0.3.1_Darwin_x86_64.tar.gz?alt=media"
      sha256 "f543150256d2b58ec5c36a0d60c4c7a60e349b46d50447f7a3f2fc9bbd1e818f"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.1%2Fjeff_0.3.1_Darwin_arm64.tar.gz?alt=media"
      sha256 "7fd53a2cc764d9cf1c731bb8fd54e88042c747463b76f8c681147bcb75fe7a4d"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.1%2Fjeff_0.3.1_Linux_x86_64.tar.gz?alt=media"
      sha256 "1267b462f45942b70db81248dd77d4c8d98a1f51d57fda9cf7bb15d6b5db4565"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.1%2Fjeff_0.3.1_Linux_arm64.tar.gz?alt=media"
      sha256 "90d8efc91559b6ab91123f15f1eb91ee2a015d2295a5877f12b909afca07a481"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
