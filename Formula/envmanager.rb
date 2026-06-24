class Envmanager < Formula
  desc "CLI for EnvManager - secure environment variable management"
  homepage "https://envmanager.dev"
  url "https://registry.npmjs.org/@envmanager-cli/cli/-/cli-0.6.0.tgz"
  sha256 "5ed8008b563e664a5bbeb50bb99ce37b795007c62f62608a9fe23a5e7d5a7b92"
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
