class Envmanager < Formula
  desc "CLI for EnvManager - secure environment variable management"
  homepage "https://envmanager.dev"
  url "https://registry.npmjs.org/@envmanager-cli/cli/-/cli-0.5.0.tgz"
  sha256 "f23490fba308cb1dab12c3b95679c245709bcc2f4e0f57173ffb42fafd592595"
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
