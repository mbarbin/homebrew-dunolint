class DunolintAT0020260211 < Formula
  desc "A linter for build files in dune projects (OCaml)"
  homepage "https://github.com/mbarbin/dunolint"
  version "0.0.20260211"
  license "LGPL-3.0-or-later" => { with: "LGPL-3.0-linking-exception" }

  on_macos do
    on_arm do
      url "https://github.com/mbarbin/dunolint/releases/download/0.0.20260211/dunolint-0.0.20260211-macos-arm64"
      sha256 "8f38071322506d3d8c0651457798a48d04a1b7ae65e73f7dedbedd9aba2da279"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mbarbin/dunolint/releases/download/0.0.20260211/dunolint-0.0.20260211-linux-x86_64"
      sha256 "8ce2817547a7b104b677e89baf6e6fcb8805811172ae9557505bdd866ee16fbc"
    end
  end

  def install
    bin.install Dir["dunolint-*"].first => "dunolint"
  end

  test do
    system "#{bin}/dunolint", "--version"
  end
end
