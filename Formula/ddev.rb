# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddev < Formula
  desc "DDEV"
  homepage "https://github.com/ddev-test/ddev"
  version "1.23.23"
  license "Apache 2"

  depends_on "mkcert"

  on_macos do
    on_intel do
      url "https://github.com/ddev-test/ddev/releases/download/v1.23.23/ddev_macos-amd64.v1.23.23.tar.gz"
      sha256 "91d3374b13a57c2ff749a3bfe2da9330c97fa6ab0037544e1c4e389c4e2639cf"

      def install
        if build.head?
            resource("ddev-artifacts").unpack buildpath

            # Get the appropriate inner zipfile based on architecture
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            inner_zip = "ddev_#{os}_#{arch}.zip"

            system "unzip", "-o", inner_zip, "-d", buildpath

            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    on_arm do
      url "https://github.com/ddev-test/ddev/releases/download/v1.23.23/ddev_macos-arm64.v1.23.23.tar.gz"
      sha256 "66225845e6326053d01078f5eb85574524e27d7ee146cc827f543002c8e9a4f0"

      def install
        if build.head?
            resource("ddev-artifacts").unpack buildpath

            # Get the appropriate inner zipfile based on architecture
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            inner_zip = "ddev_#{os}_#{arch}.zip"

            system "unzip", "-o", inner_zip, "-d", buildpath

            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ddev-test/ddev/releases/download/v1.23.23/ddev_linux-amd64.v1.23.23.tar.gz"
        sha256 "36cef50fe933a6bef9148bbb91fbd9d47658dca651ca09b385f1336a54b1847a"

        def install
          if build.head?
              resource("ddev-artifacts").unpack buildpath

              # Get the appropriate inner zipfile based on architecture
              os = OS.mac? ? "darwin" : "linux"
              arch = Hardware::CPU.arm? ? "arm64" : "amd64"
              inner_zip = "ddev_#{os}_#{arch}.zip"

              system "unzip", "-o", inner_zip, "-d", buildpath

              bin.install "ddev"
              bash_completion.install "ddev_bash_completion.sh" => "ddev"
              zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
          else
              bin.install "ddev"
              bash_completion.install "ddev_bash_completion.sh" => "ddev"
              zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
          end
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ddev-test/ddev/releases/download/v1.23.23/ddev_linux-arm64.v1.23.23.tar.gz"
        sha256 "ad191ecc46f9b4fcdd540186501ff0cdb1a68e7100be0ae652fc2727f1ea8992"

        def install
          if build.head?
              resource("ddev-artifacts").unpack buildpath

              # Get the appropriate inner zipfile based on architecture
              os = OS.mac? ? "darwin" : "linux"
              arch = Hardware::CPU.arm? ? "arm64" : "amd64"
              inner_zip = "ddev_#{os}_#{arch}.zip"

              system "unzip", "-o", inner_zip, "-d", buildpath

              bin.install "ddev"
              bash_completion.install "ddev_bash_completion.sh" => "ddev"
              zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
          else
              bin.install "ddev"
              bash_completion.install "ddev_bash_completion.sh" => "ddev"
              zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
          end
        end
      end
    end
  end

  head do
    url "https://github.com/ddev-test/ddev.git", branch: "master"
    resource "ddev-artifacts" do
      url "https://nightly.link/ddev-test/ddev/workflows/master-build/master/ddev-head-artifacts.zip"
    end
  end

  test do
    system "#{bin}/ddev --version"
  end
end
