class Yoo < Formula
  desc "Local CLI for project, Git, and development environment information"
  homepage "https://github.com/nihitdev/yo-cli"
  version "1.1.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/nihitdev/yo-cli/releases/download/v1.1.2/yoo-v1.1.2-macos-aarch64.tar.gz"
      sha256 "33e25b994c05d34fcd9d7ca8560a6dcb73bb09a84fef985c684a4861318c83df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nihitdev/yo-cli/releases/download/v1.1.2/yoo-v1.1.2-linux-x86_64.tar.gz"
      sha256 "b5cc967c93488c2dfffdb6ec119c6eefb251700d00003d1db495e520fb3c27f3"
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
