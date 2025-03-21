# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ding < Formula
  desc "Ding CLI tool"
  homepage "https://github.com/bugwz/homebrew-ding"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bugwz/ding/releases/download/v0.0.1/ding_0.0.1_darwin_amd64"
      sha256 "a17c5dad47b429e079c67be2733d04934f32b30fc73ecf1808a0b0797df641b7"

      def install
        bin.install "ding_darwin_#{Hardware::CPU.intel? ? 'amd64' : 'arm64'}" => "ding"
        mkdir_p "#{etc}/ding"
        cp "#{buildpath}/config/default.ini", "#{etc}/ding/default.ini"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bugwz/ding/releases/download/v0.0.1/ding_0.0.1_darwin_arm64"
      sha256 "4f7573fbc4431742062eea7a4d08bdbb7f87f6912c8bf47d14d97d88084ef7da"

      def install
        bin.install "ding_darwin_#{Hardware::CPU.intel? ? 'amd64' : 'arm64'}" => "ding"
        mkdir_p "#{etc}/ding"
        cp "#{buildpath}/config/default.ini", "#{etc}/ding/default.ini"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bugwz/ding/releases/download/v0.0.1/ding_0.0.1_linux_amd64"
        sha256 "12cba7e89e4e95a6c5cea2ae9af6ace3dc08dcf410dac9b6bee8d10c88aa4828"

        def install
          bin.install "ding_darwin_#{Hardware::CPU.intel? ? 'amd64' : 'arm64'}" => "ding"
          mkdir_p "#{etc}/ding"
          cp "#{buildpath}/config/default.ini", "#{etc}/ding/default.ini"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/bugwz/ding/releases/download/v0.0.1/ding_0.0.1_linux_arm"
        sha256 "dc00f4477f54f424ac0d2046b5bf7f890a7f6d5385ebdc2c34373ede51ff5fed"

        def install
          bin.install "ding_darwin_#{Hardware::CPU.intel? ? 'amd64' : 'arm64'}" => "ding"
          mkdir_p "#{etc}/ding"
          cp "#{buildpath}/config/default.ini", "#{etc}/ding/default.ini"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bugwz/ding/releases/download/v0.0.1/ding_0.0.1_linux_arm64"
        sha256 "7042334b351af215b3e3bff78317de414ea3ef1e46c5162a260fb93dab328337"

        def install
          bin.install "ding_darwin_#{Hardware::CPU.intel? ? 'amd64' : 'arm64'}" => "ding"
          mkdir_p "#{etc}/ding"
          cp "#{buildpath}/config/default.ini", "#{etc}/ding/default.ini"
        end
      end
    end
  end

  test do
    system "#{bin}/ding --version"
  end
end
