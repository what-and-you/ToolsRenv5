#!/bin/bash

# File untuk menyimpan informasi registrasi
REGISTRATION_FILE="/sdcard/registration_status.txt"

# Fungsi untuk melakukan registrasi
register_user() {
  read -p "Masukkan nama: " name
  read -p "Masukkan nomor telepon: " phone_number
  echo "Nama: $name" > "$REGISTRATION_FILE"
  echo "Nomor Telepon: $phone_number" >> "$REGISTRATION_FILE"
  echo "Registrasi berhasil. Anda sekarang dapat mengakses script utama."
}

# Memeriksa apakah pengguna sudah terdaftar
if [ -f "$REGISTRATION_FILE" ]; then
  echo "Anda sudah terdaftar. Silakan gunakan script utama."
else
  register_user
fi
