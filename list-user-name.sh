#!/bin/bash

# Direktori untuk menyimpan file
OUTPUT_DIR="/var/.hidden_ip_data"
# Nama file untuk menyimpan alamat IP
OUTPUT_FILE="$OUTPUT_DIR/ip_addresses.txt"

# Membuat direktori jika belum ada
if [ ! -d "$OUTPUT_DIR" ]; then
  mkdir -p "$OUTPUT_DIR"
fi

# Mendapatkan alamat IP lokal
local_ip=$(hostname -I | awk '{print $1}')
# Alternatif: local_ip=$(ip a | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | cut -d/ -f1)

# Mendapatkan alamat IP publik menggunakan curl
public_ip=$(curl -s ifconfig.me)
# Alternatif: public_ip=$(curl -s ipinfo.io/ip)

# Menyimpan hasil ke file
echo "Alamat IP lokal: $local_ip" > "$OUTPUT_FILE"
echo "Alamat IP publik: $public_ip" >> "$OUTPUT_FILE"
