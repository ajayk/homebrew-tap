# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.50"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.50/chainctl_darwin_x86_64"
      sha256 "61f342911ef287256e738e4a5d752f33ba084cedcb1530169924b7f4cea040c3"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.50/chainctl_darwin_arm64"
      sha256 "e5195be79edc70458c3a538fac928a2eed04e73e349c715632c0044a77aaafb2"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.50/chainctl_linux_x86_64"
      sha256 "19ceaeeb57836e55eb26fb6ea885fe33776f883590a9e4b7a001b8d05eead16f"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.50/chainctl_linux_arm64"
      sha256 "ba40f9030f946594f521e8a65adc62095c8eefdedee15331c04b5428465acbbc"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
