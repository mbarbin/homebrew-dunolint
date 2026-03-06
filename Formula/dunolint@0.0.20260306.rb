class DunolintAT0020260306 < Formula
  desc "A linter for build files in dune projects (OCaml)"
  homepage "https://github.com/mbarbin/dunolint"
  version "0.0.20260306"
  license "LGPL-3.0-or-later" => { with: "LGPL-3.0-linking-exception" }

  on_macos do
    on_arm do
      url "https://github.com/mbarbin/dunolint/releases/download/0.0.20260306/dunolint-0.0.20260306-macos-arm64.tar.gz"
      sha256 "ddd486e304a83a5e02da8fa2addef7f96315f571d0f5f70dbf6ee833ef25f88e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mbarbin/dunolint/releases/download/0.0.20260306/dunolint-0.0.20260306-linux-x86_64.tar.gz"
      sha256 "0a48c1e236ea3144c0b3a2ee2ccbbbd76e4e0de4693c4bc5ce995e7ff90a5870"
    end
  end

  def install
    bin.install "dunolint"
  end

  test do
    system "#{bin}/dunolint", "--version"
  end
end
