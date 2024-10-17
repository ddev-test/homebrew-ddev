# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddev < Formula
  desc "DDEV"
  homepage "https://github.com/ddev/ddev"
  version "1.23.5"
  license "Apache 2"

  depends_on "mkcert"

  on_macos do
    on_intel do
      url "https://github.com/ddev-test/ddev/releases/download/v1.23.5/ddev_macos-amd64.v1.23.5.tar.gz"
      sha256 "00eb6f08a238bc1edf0312e8aa9524a77293470866950f029836db9ccfa3587c"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "build", "completions"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
            bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
            zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    on_arm do
      url "https://github.com/ddev-test/ddev/releases/download/v1.23.5/ddev_macos-arm64.v1.23.5.tar.gz"
      sha256 "e9be15c5689d3c5214b6e0c6c54619aaa3995474ad8b5c1b3d212fe49cb25d23"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "build", "completions"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
            bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
            zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
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
        url "https://github.com/ddev-test/ddev/releases/download/v1.23.5/ddev_linux-amd64.v1.23.5.tar.gz"
        sha256 "7e13a63589e5b60e8321f5ebba609c7245d14c872b51e87f666c7ca1e423ba00"

        def install
          if build.head?
              os = OS.mac? ? "darwin" : "linux"
              arch = Hardware::CPU.arm? ? "arm64" : "amd64"
              system "mkdir", "-p", "#{bin}"
              system "make", "build", "completions"
              system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
              bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
              zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
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
        url "https://github.com/ddev-test/ddev/releases/download/v1.23.5/ddev_linux-arm64.v1.23.5.tar.gz"
        sha256 "ea12611512fad81b51b5981c278202d1baf7c54a9f04981bb6905def63b26dde"

        def install
          if build.head?
              os = OS.mac? ? "darwin" : "linux"
              arch = Hardware::CPU.arm? ? "arm64" : "amd64"
              system "mkdir", "-p", "#{bin}"
              system "make", "build", "completions"
              system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
              bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
              zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
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

  head "https://github.com/ddev/ddev.git", branch: "master"
  depends_on "go" => :build
  depends_on "make" => :build

  test do
    system "#{bin}/ddev --version"
  end
end
