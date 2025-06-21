#!/bin/bash
echo "🔧 Menjalankan script customize..."

# Tambahkan paket tambahan jika diperlukan
# echo "CONFIG_PACKAGE_htop=y" >> .config
# echo "CONFIG_PACKAGE_coremark=y" >> .config

make defconfig
