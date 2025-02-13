class ScoutosCli < Formula  # <-- Class name must match filename "scoutos-cli.rb"
  desc "Scout CLI for managing AI workflows"
  homepage "https://github.com/scoutos/cli"
  version "1.0.0"

  if OS.mac?
    url "https://github.com/scoutos/cli/releases/download/latest/scout-cli-macos"
    sha256 "f9850c6271a9e8596aedaf8f6b4923b33888bb4991d49e534debedfed18f9edb"
  elsif OS.linux?
    url "https://github.com/scoutos/cli/releases/download/latest/scout-cli-linux"
    sha256 "4ed5fdd54ac807568b0149ed73c9ebeb61ee808d14d67113716c7d290fdb8102"
  end

  def install
    bin.install "scout-cli-macos" => "scout" if OS.mac?
    bin.install "scout-cli-linux" => "scout" if OS.linux?
  end

  test do
    system "#{bin}/scout", "--help"
  end
end
