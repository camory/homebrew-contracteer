# Generated with JReleaser 1.17.0 at 2025-04-13T22:47:44.820004+02:00

class Contracteer < Formula
  desc "The musketeer of your API contracts."
  homepage "https://github.com/camory/contracteer"
  url "https://github.com/camory/contracteer/releases/download/2.0.0/contracteer-2.0.0-osx-aarch_64.zip"
  version "2.0.0"
  sha256 "7637167f57effed00343f397fef13507536977e39d490b71862200df8232ff5e"
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
