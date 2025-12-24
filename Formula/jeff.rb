# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.4%2Fjeff_0.3.4_Darwin_x86_64.tar.gz?alt=media"
      sha256 "2848330e2e66ba791b8cfe28b41058ff0c63caaa4f46ce67f2b02202bda53ece"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.4%2Fjeff_0.3.4_Darwin_arm64.tar.gz?alt=media"
      sha256 "a7fdff5c70706f137124245f6e7f8801f9a5a15635233a29812f6ce43460cafe"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.4%2Fjeff_0.3.4_Linux_x86_64.tar.gz?alt=media"
      sha256 "628464203c35f88863b8d2dea314761b59275418f0a93a91422a9b46de954ab2"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.4%2Fjeff_0.3.4_Linux_arm64.tar.gz?alt=media"
      sha256 "dee3005782dc2a18ce46ae5cddddbedd1092ad60f9187876c060d5bebed55f8a"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
