 #!/bin/bash
 
green='\033[1;92m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
reset='\033[0m'
orange='\33[38;5;208m'

REGISTRATION_FILE="/sdcard/registration_status.txt"

if [ ! -f "$REGISTRATION_FILE" ]; then
  echo "Anda belum terdaftar. Silakan lakukan registrasi terlebih dahulu dengan menjalankan script register.sh."
  exit 1
fi
echo "Selamat datang! Anda sudah terdaftar."


login_file=".login_user"

function show_menu {
clear
sleep 1
clear
echo "            ______            __     ____                  ______
           /_  __/___  ____  / /____/ __ \___  ____ _   __/ ____/
            / / / __ \/ __ \/ / ___/ /_/ / _ \/ __ \ | / /___ \
                                      / / / /_/ / /_/ / (__  ) _, _/  __/ / / / |/ /___/ /
          /_/  \____/\____/_/____/_/ |_|\___/_/ /_/|___/_____/


          |=================================================|
          |name   :$name 👑                               |
          |status :ᴘʀᴇᴍɪᴜᴍ                                  |
          |𝙾𝚄𝚃𝙷𝙾𝚁 : 𝚁𝙴𝙽9999                                 |
          |version:0.5                                      |
          |Tanggal dan waktu saat ini: $(date +'%Y-%m-%d | %H:%M:%S')|
          |=================================================|
          |=================================================|
          |                    ALL MENU                     |
          |=================================================|
          |=================================================|
          |1.SPAM MENU                                      |
          |                                                 |
          |=================================================|
          |=================================================|
          |2.VIRUS MENU                                     |
          |                                                 |
          |=================================================|
          |=================================================|
          |3.HACKING MENU                                   |
          |                                                 |
          |=================================================|
          |=================================================|
          |4.Tampilkan Pesan                                |
          |5.Lihat Info Pengguna                            |
          |6.Ubah Nama Pengguna                             |
          |7.install bahan                                  |
          |8.info update                                    |
          |0.Exit                                           |
          |=================================================|
          |bug   (report bug)                               |
          ==================================================|
"
       echo
       echo
       echo -n    "
╭───≼pilih menunya ngab≽
╰──╼✠ "
}
function spam_menu {
clear
cd bahan-spam
bash belajar_bash123.sh
}
function virus_menu {
clear
cd bahan_virus
bash bahan_virus.sh
}
function hacker_menu {
bash hacker_menu.sh
}
function display_message {
  clear
  text=" $name, Udah gitu aja 🗿🗿🗿"
 interval=0.05
  for (( i=0; i<${#text}; i++ )); do
    echo -n "${text:$i:1}"
    sleep $interval
  done
  echo
  echo "Tekan enter untuk kembali ke menu utama"
  read
}
function view_user_info {
  clear
  echo "Nama Pengguna: $name"
  echo "Tekan enter untuk kembali ke menu utama"
  read
}
function change_user_name {
  clear
  echo "Masukkan nama baru: "
  echo "pastikan Nama kurang dari 8 huruf!"
  read new_name
  name=$new_name
  echo "$name" > "$login_file"
  echo "Nama telah diubah menjadi $name "
sleep 1.5
  echo "Tekan enter untuk kembali ke menu utama"
  read
}
function info_update {
sleep 2
text="Hallo $name, UPDATE VERSI TERBARU ToolsRenv4 ke ToolsRenv5 "
for (( i=0; i<${#text}; i++ )); do
  echo -n "${text:$i:1}"
  sleep 0.05
done
echo
echo "Tekan enter untuk kembali ke menu utama"
  read
}
function lapor_bug {
clear
sleep 1.5
echo "menuju ke whatsapp!"
sleep 2
xdg-open "https://wa.me/+6289519450908?text=asslamualaikum,+bang+ada+bug+di+sc+ToolsRenv5"
sleep 3.5
echo "enter untuk kembali ke menu utama"
  read
}
function install_package  {
clear
pkg update
pkg upgrade
pkg install git
pkg install python
pkg install python2
git clone https://github.com/what-and-you/bahan-spam.git
git clone https://github.com/what-and-you/bahan_virus.git
git clone https://github.com/what-and-you/hacking_menu.git
pkg install curl
pkg install wget
pkg install toilet
sleep 1.5
   echo -e  "${green}berhasil install package!!"
  echo "Tekan enter untuk kembali ke menu utama"
  read
}
if [ -f "$login_file" ]; then
  name=$(cat "$login_file")
  echo "Selamat datang kembali, $name!"
sleep 2
else
  echo "Silakan masukkan ulang nama anda: "
  read name
  echo "$name" > "$login_file"
sleep 1.5
clear
  echo "Selamat datang, $name!"
sleep 2
fi

while true; do
  show_menu
  read choice
  case $choice in
    1)
      spam_menu
      ;;
    2)
      virus_menu
      ;;
    3)
      hacker_menu
      ;;
    4)
      display_message
      ;;
    5)
      view_user_info
      ;;
    6)
      change_user_name
      ;;
    7)
      install_package
      ;;
    8)
      info_update
      ;;
  bug)
      lapor_bug
      ;;
    0)
      echo "Selamat Tinggal $name!👋👋"
     sleep 1
      break
      ;;
    *)
      echo "Pilihan tidak valid, coba lagi."
      sleep 1
      ;;
  esac
done
