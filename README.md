# homebrew-dunolint

Homebrew tap for [dunolint](https://github.com/mbarbin/dunolint).

## Installation

```bash
brew tap mbarbin/dunolint
brew install dunolint
```

## About

This tap distributes pre-built binaries published with *dunolint* GitHub releases.

Artifacts attestations are available for each binary, verifiable with:

    gh attestation verify $(which dunolint) --repo mbarbin/dunolint

## Platform Support

- macOS ARM64
- Linux x86_64
