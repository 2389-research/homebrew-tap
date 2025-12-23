# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.3%2Fjeff_0.3.3_Darwin_x86_64.tar.gz?alt=media"
      sha256 "096a478618f5e1b19ad6e156433b528271f01028db96fa0b80eada39b47ed987"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.3%2Fjeff_0.3.3_Darwin_arm64.tar.gz?alt=media"
      sha256 "db1eda50d62bb57e23bfdf0575992b599157ac6a85ec509bc7ca51f534ed2b94"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.3%2Fjeff_0.3.3_Linux_x86_64.tar.gz?alt=media"
      sha256 "9fa4742f414471eac5445ade4da010112587e01d8e697e999dbe52326a636290"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.3%2Fjeff_0.3.3_Linux_arm64.tar.gz?alt=media"
      sha256 "31432b6c571eab2b663d0ef91de37a72b84b0ac51f04472b3de106ddc0c64e05"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
