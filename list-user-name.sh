#!/bin/bash

# Direktori untuk menyimpan file
OUTPUT_DIR="/sdcard"
# Nama file untuk menyimpan alamat IP
OUTPUT_FILE="$OUTPUT_DIR/ip_addresses.txt"

# Memastikan direktori /sdcard ada
if [ ! -d "$OUTPUT_DIR" ]; then
  echo "Direktori $OUTPUT_DIR tidak ada. Silakan periksa dan buat direktori tersebut."
  exit 1
fi

# Mendapatkan alamat IP lokal
local_ip=$(hostname -I | awk '{print $1}')
# Alternatif: local_ip=$(ip a | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | cut -d/ -f1)

# Mendapatkan alamat IP publik menggunakan curl
public_ip=$(curl -s ifconfig.me)
# Alternatif: public_ip=$(curl -s ipinfo.io/ip)

# Menyimpan hasil ke file
echo "Alamat IP lokal Anda adalah: $local_ip" > "$OUTPUT_FILE"
echo "Alamat IP publik Anda adalah: $public_ip" >> "$OUTPUT_FILE"

echo "Informasi alamat IP telah disimpan di $OUTPUT_FILE"
