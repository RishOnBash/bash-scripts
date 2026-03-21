# bash-scripts

A collection of minimalist CLI utilities for Termux.

## 🛠️ Included Tools

* [[vx265](vx265)]: High-efficiency batch video encoder (x265/HEVC).
* [[passgen](passgen)]: Secure password generator powered by OpenSSL.
* [[seqit](seqit)]: Lightweight nucleotide sequence analysis tool.
* [[todo](todo)]: Lightweight todo manager for the command line.

## 🚀 Installation
 Before cloning the repo, ensure you are in `$HOME` directory.

1. **Clone the repository:**

```bash 
git clone https://github.com/RishOnBash/bash-scripts.git
cd bash-scripts
```

2. **Run the installer:**

```bash
chmod +x install.sh
./install.sh [Option]
```

### Options:

```bash
-I, --install-all   Install all scripts
-P, --passgen       Install passgen (needs openssl)
-S, --seqit         Install seqit (needs bc)
-T, --todo          Install todo (needs bat)
-V, --vx265         Install vx265 (needs ffmpeg)
```

## 📦 Dependencies
The scripts rely on the following packages:

* `bat` :Required for todo
* `bc` : Required for seqit
* `ffmpeg` :Required for vx265
* `openssl` :Required for passgen

Install them via your package manager:

```bash
pkg install ffmpeg openssl bc bat
```

## 🗑 Uninstallation

```bash
cd bash-scripts
chmod +x uninstall.sh
./uninstall.sh --remove-all
```
### Options:

```bash
-R, --remove-all    Remove all scripts
-P, --passgen       Remove passgen
-S, --seqit         Remove seqit
-T, --todo          Remove todo
-V, --vx265         Remove vx265
```

## ⚖️ License
Distributed under the MIT License. See LICENSE for more information.
