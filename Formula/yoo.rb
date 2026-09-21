class Yoo < Formula
  desc "Local CLI for project, Git, and development environment information"
  homepage "https://github.com/nihitdev/yo-cli"
  version "1.1.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/nihitdev/yo-cli/releases/download/v1.1.1/yoo-v1.1.1-macos-aarch64.tar.gz"
      sha256 "03230cc9834e98a18209f5168ef2b81012908fcf021cbf57d34bf26fa09d6ac4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nihitdev/yo-cli/releases/download/v1.1.1/yoo-v1.1.1-linux-x86_64.tar.gz"
      sha256 "c842c0b09cbbab21e2e1b1972771c2d0a55af957e699f1d70402f303badde9a3"
    end
  end

  def install
    bin.install "yoo"
    generate_completions_from_executable(bin/"yoo", "completions", shells: [:bash, :zsh, :fish], shell_parameter_format: :arg)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yoo --version")
  end
end
