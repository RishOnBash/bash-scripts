# bash-scripts

A collection of minimalist CLI utilities for Termux.

## 🛠️ Included Tools

* [[vx265](vx265)]: High-efficiency batch video encoder (x265/HEVC).
* [[passgen](passgen)]: Secure password generator powered by OpenSSL.
* [[todo](todo)]: Lightweight todo manager for the command line.

## 🚀 Installation
Clone the repository and run the setup script to deploy the tools to your 'bin' directory.

'''bash 
git clone https://github.com/RishOnBash/bash-scripts.git
cd bash-scripts
chmod +x setup.sh
./setup.sh --install-all
'''

### Options include:

'''bash
-I, --install-all   Install all scripts"
-P, --passgen       Install passgen (needs openssl)"
-T, --todo          Install todo (needs bat)"
-V, --vx265         Install vx265 (needs ffmpeg)"
'''

> Note: Ensure '$PATH' is set to '$PREFIX/bin'.

## 📦 Dependencies
The scripts rely on the following packages:

'ffmpeg' (Required for vx265)
'openssl' (Required for passgen)
'bat' (Required for todo)

Install them via your package manager:

'''bash
pkg install ffmpeg openssl bat
'''

## 🗑 Uninstallation

'''bash
cd bash-scripts
chmod +x uninstall.sh
./uninstall.sh --remove-all
'''
### Options include:

'''bash
-R, --remove-all    Remove all scripts"
-P, --passgen       Remove passgen"
-T, --todo          Remove todo"
-V, --vx265         Remove vx265"
'''

## ⚖️ License
Distributed under the MIT License. See LICENSE for more information.