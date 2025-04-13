# Generated with JReleaser 1.17.0 at 2025-04-13T21:58:02.028686+02:00

class Contracteer < Formula
  desc "The musketeer of your API contracts."
  homepage "https://github.com/camory/contracteer"
  url "https://github.com/camory/contracteer/releases/download/2.0.0/contracteer-2.0.0-osx-aarch_64.zip"
  version "2.0.0"
  sha256 "bc338dc659d29d1ac24be271f1d432fd23b338d100ef1eb63ddb19635b2015b9"
  license "GPL-3.0-only"

  livecheck do
    url "https://github.com/camory/contracteer/releases/latest"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/contracteer" => "contracteer"
  end

  test do
    output = shell_output("#{bin}/contracteer --version")
    assert_match "2.0.0", output
  end
end
