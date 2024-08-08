#!/bin/bash

REGISTRATION_FILE="/sdcard/registration_status.txt"

register_user() {
  read -p "Masukkan nama: " name
  read -p "Masukkan nomor telepon: " phone_number
  echo "Nama: $name" > "$REGISTRATION_FILE"
  echo "Registrasi berhasil. Anda sekarang dapat mengakses script utama."
}
