class Envmanager < Formula
  desc "CLI for EnvManager - secure environment variable management"
  homepage "https://envmanager.dev"
  url "https://registry.npmjs.org/@envmanager-cli/cli/-/cli-0.8.0.tgz"
  sha256 "1c052cf8ca2380489d66e114b381daab0a6d5ae6d8f5061770de5569ffc32ca4"
  license "SEE LICENSE IN LICENSE"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "envmanager", shell_output("#{bin}/envmanager --version")
  end
end
