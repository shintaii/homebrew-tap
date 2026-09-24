class Envmanager < Formula
  desc "CLI for EnvManager - secure environment variable management"
  homepage "https://envmanager.dev"
  url "https://registry.npmjs.org/@envmanager-cli/cli/-/cli-0.8.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
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
