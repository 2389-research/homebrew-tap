# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "AI-powered personal assistant for email, calendar, and tasks"
  homepage "https://jeff.2389.ai"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.1%2Fjeff_0.4.1_Darwin_x86_64.tar.gz?alt=media"
      sha256 "1ab5da9a03fdf4610497cab93f793609fd662d8c6f97396676f4a967a34fe767"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.1%2Fjeff_0.4.1_Darwin_arm64.tar.gz?alt=media"
      sha256 "bda7b10928ad41ef900ed85250a211c1e630651f96b39abe10fba4ce5c82529b"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.1%2Fjeff_0.4.1_Linux_x86_64.tar.gz?alt=media"
      sha256 "8e7232e2c9c492229a7ba953594133c8b0ae1fb3f190ae1c79357bce6cf3450c"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.1%2Fjeff_0.4.1_Linux_arm64.tar.gz?alt=media"
      sha256 "7d23eaca4fa28c0db69ea1459da54122f2e30278e611fedc1d433098c85f7e99"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
