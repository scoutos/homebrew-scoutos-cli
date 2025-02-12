class ScoutosCli < Formula  # <-- Class name must match filename "scoutos-cli.rb"
  desc "Scout CLI for managing AI workflows"
  homepage "https://github.com/scoutos/cli"
  version "1.0.0"

  if OS.mac?
    url "https://github.com/scoutos/cli/releases/download/latest/scout-cli-macos"
    sha256 "9f9ee55810a95c37d6bf76f9a01e0a6c8cbc5a38b8ce6117326252f9830aa5d0"
  elsif OS.linux?
    url "https://github.com/scoutos/cli/releases/download/v1.0.0/scout-cli-linux"
    sha256 "8105740529fb1aa921aa3d49fd61ab0f4129783d992d1e2a346d7b062045f41c"
  end

  def install
    bin.install "scout-cli-macos" => "scout" if OS.mac?
    bin.install "scout-cli-linux" => "scout" if OS.linux?
  end

  test do
    system "#{bin}/scout", "--help"
  end
end
