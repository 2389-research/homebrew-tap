# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.2.0%2Fjeff_0.2.0_Darwin_x86_64.tar.gz?alt=media"
      sha256 "4e3483e9049d51415a30b4cb2b56dbcf3a158aa200aff5a665432b80ff384ae8"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.2.0%2Fjeff_0.2.0_Darwin_arm64.tar.gz?alt=media"
      sha256 "57ff3c84646a77840f08b75e61fb2d789daff7dc71fa7a2fc1385b2af243d35c"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.2.0%2Fjeff_0.2.0_Linux_x86_64.tar.gz?alt=media"
      sha256 "5c7debf39aa81889c068cde2072435f0803e6fba1808328eadbd0defb6139c0a"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.2.0%2Fjeff_0.2.0_Linux_arm64.tar.gz?alt=media"
      sha256 "d0dc867b5ad45f14c4a8d4eaf54f65cd221646c0f9cede0ff03e1252477e5eaa"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
