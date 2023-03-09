# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.83"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.83/chainctl_darwin_arm64"
      sha256 "7cc62a80ee0f92160dd2eac5964ace25fa4186060e3f9e44470c23c4f44a8ae2"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.83/chainctl_darwin_x86_64"
      sha256 "d5579bb892ffca61ad3fe7948e4952e0f65ea4a1da90f42ece352c7f75ed5c36"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.83/chainctl_linux_x86_64"
      sha256 "9984ad98256790c73ccfacf4f7c15d2cbfa8e9a0767a74de4d1866e30fe2d5bb"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.83/chainctl_linux_arm64"
      sha256 "43c367a6e8ded32e76e5318d7b03cc33e254a6ea70755451f23b398bac14529c"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
