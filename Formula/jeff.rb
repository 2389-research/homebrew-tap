# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "AI-powered personal assistant for email, calendar, and tasks"
  homepage "https://jeff.2389.ai"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.0%2Fjeff_0.4.0_Darwin_x86_64.tar.gz?alt=media"
      sha256 "c93c350b8f19243768d50ab9f55a0baddcbbc5768f48d0c0c0210c7d2b5f7eee"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.0%2Fjeff_0.4.0_Darwin_arm64.tar.gz?alt=media"
      sha256 "2bc67ea99bec04165294788c6bdfa4b6b85f4e50cca5443c2a1ec1878e7462b3"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.0%2Fjeff_0.4.0_Linux_x86_64.tar.gz?alt=media"
      sha256 "1d5e6de481d105ec831184c733bd8236f42c929d5d3da5663d6f394761a4f9a3"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.0%2Fjeff_0.4.0_Linux_arm64.tar.gz?alt=media"
      sha256 "496dd2f552e9983d29b57b7d59b2ea6bff641efa41a0e42e9dec5d86f1b6e6f4"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
