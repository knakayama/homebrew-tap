# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dv < Formula
  desc "A command line tool to remove AWS default VPC(s)"
  homepage "https://github.com/knakayama/dv"
  version "0.0.2"
  license "MIT"

  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/knakayama/dv/releases/download/v0.0.2/dv_0.0.2_Darwin_x86_64.tar.gz"
      sha256 "5c8a01f35a939a4f210019da699574e10075bba30982a3f87712607831304f6a"

      def install
        bin.install "dv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/knakayama/dv/releases/download/v0.0.2/dv_0.0.2_Darwin_arm64.tar.gz"
      sha256 "7d643ac7bb4000808a70281bb4cda1683af43d43d26c0a9cdd260b1af8dddd2a"

      def install
        bin.install "dv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/knakayama/dv/releases/download/v0.0.2/dv_0.0.2_Linux_arm64.tar.gz"
      sha256 "f521ccf5c4acdd5beb19a07c4259bdede83d70b7a2758c80f5dde0d3fd74bd04"

      def install
        bin.install "dv"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/knakayama/dv/releases/download/v0.0.2/dv_0.0.2_Linux_x86_64.tar.gz"
      sha256 "0f9f91c2cfdfd51c693f612f7ac5d318962ac0df8ddd097b52f1fc823d9cda31"

      def install
        bin.install "dv"
      end
    end
  end

  test do
    system "#{bin}/dv -v"
  end
end
