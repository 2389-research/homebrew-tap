# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.7%2Fjeff_0.3.7_Darwin_x86_64.tar.gz?alt=media"
      sha256 "af66a0a56564d2acc2bef1f27fbf9e488fb75b66a121d67d47a85e2d74a70f66"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.7%2Fjeff_0.3.7_Darwin_arm64.tar.gz?alt=media"
      sha256 "a2c832ea99b30b49b25b95756d214d258d03606f984196166216f59197125a3f"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.7%2Fjeff_0.3.7_Linux_x86_64.tar.gz?alt=media"
      sha256 "9e30d632af029d3012281043e0f00d71f084b1f33152690abc27bf75fd95fcc1"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.7%2Fjeff_0.3.7_Linux_arm64.tar.gz?alt=media"
      sha256 "ff44704854318c7b3a9dc9924262bf584f5cbcf90695cf6744084f4fc4e6a8e4"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
