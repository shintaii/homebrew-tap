class Envmanager < Formula
  desc "CLI for EnvManager - secure environment variable management"
  homepage "https://envmanager.dev"
  url "https://registry.npmjs.org/@envmanager-cli/cli/-/cli-0.5.1.tgz"
  sha256 "c48618707fdcc6ce83054145844843d4622183ef240d1e2efe8cc307ee629f53"
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
