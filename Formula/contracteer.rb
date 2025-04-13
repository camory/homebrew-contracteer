# Generated with JReleaser 1.17.0 at 2025-04-13T19:30:38.361830563Z

class Contracteer < Formula
  desc "The musketeer of your API contracts."
  homepage "https://github.com/camory/contracteer"
  url "https://github.com/camory/contracteer/releases/download/2.0.0/contracteer-2.0.0-osx-aarch_64.zip"
  version "2.0.0"
  sha256 "844a30fa24f050a19f7fe8e23b458c4d30ecc7e2841f66139f9e119b4e16bc78"
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
