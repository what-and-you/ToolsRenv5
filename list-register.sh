#!/bin/bash

# Path untuk menyimpan file di /sdcard
REGISTERED_DATA_FILE="/sdcard/registered_data.txt"

# Memastikan file ada, jika tidak buat file kosong
if [ ! -f "$REGISTERED_DATA_FILE" ]; then
  touch "$REGISTERED_DATA_FILE"
fi

# Fungsi untuk menampilkan data yang terdaftar
view_registered_data() {
  if [ -s "$REGISTERED_DATA_FILE" ]; then
    echo "Nama dan nomor telepon yang terdaftar:"
    cat "$REGISTERED_DATA_FILE"
  else
    echo "Tidak ada data yang terdaftar."
  fi
}

# Fungsi untuk menambahkan nama dan nomor telepon baru
add_new_data() {
  read -p "Masukkan nama: " name
  read -p "Masukkan nomor telepon: " phone_number
  echo "$name, $phone_number" >> "$REGISTERED_DATA_FILE"
  echo "Data berhasil ditambahkan."
}

# Fungsi untuk mengedit data yang terdaftar
edit_registered_data() {
  nano "$REGISTERED_DATA_FILE"
}

# Meminta pengguna untuk memilih tindakan
echo "Pilih tindakan:"
echo "1. Lihat data yang terdaftar"
echo "2. Tambahkan data baru"
echo "3. Edit data yang terdaftar"
read -p "Masukkan pilihan Anda (1/2/3): " choice

case $choice in
  1)
    view_registered_data
    ;;
  2)
    add_new_data
    ;;
  3)
    edit_registered_data
    ;;
  *)
    echo "Pilihan tidak valid."
    ;;
esac
