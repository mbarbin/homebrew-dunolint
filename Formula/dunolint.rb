class Dunolint < Formula
  desc "A linter for build files in dune projects (OCaml)"
  homepage "https://github.com/mbarbin/dunolint"
  version "0.0.20260103"
  license "LGPL-3.0-or-later" => { with: "LGPL-3.0-linking-exception" }

  on_macos do
    on_arm do
      url "https://github.com/mbarbin/dunolint/releases/download/0.0.20260103/dunolint-0.0.20260103-macos-arm64"
      sha256 "d74991986c7f0e8679b3252888baf1407a1a35563889a7d9b07789539fc9779d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mbarbin/dunolint/releases/download/0.0.20260103/dunolint-0.0.20260103-linux-x86_64"
      sha256 "2771c39def3ae771735e105bf22f3ab67745354ed13e7263284a866625eacb69"
    end
  end

  def install
    bin.install Dir["dunolint-*"].first => "dunolint"
  end

  test do
    system "#{bin}/dunolint", "--version"
  end
end
