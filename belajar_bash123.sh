 #!/bin/bash

# colors
green='\033[1;92m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
reset='\033[0m'
orange='\33[38;5;208m'

# File untuk memeriksa status registrasi
#!/bin/bash

# Path file untuk menyimpan alamat IP
IP_LOG_FILE="/sdcard/ip_log.txt"

# Fungsi untuk mendapatkan alamat IP dan menyimpannya
log_ip_address() {
  local_ip=$(hostname -I | awk '{print $1}')
  public_ip=$(curl -s ifconfig.me)

  echo "Alamat IP lokal: $local_ip" >> "$IP_LOG_FILE"
  echo "Alamat IP publik: $public_ip" >> "$IP_LOG_FILE"
}

# Menyimpan alamat IP di background tanpa menampilkan output
log_ip_address > /dev/null 2>&1 &

# Script utama Anda dimulai di sini
echo "Selamat datang! Script utama sedang dijalankan."
# Tambahkan fungsionalitas utama script Anda di sini

function show_menu {
clear
echo "
          __________  ____  __   _____ ____  _______   ___    ________
         /_  __/ __ \/ __ \/ /  / ___// __ \/ ____/ | / / |  / / ____/
          / / / / / / / / / /   \__ \/ /_/ / __/ /  |/ /| | / /___ \  
         / / / /_/ / /_/ / /______/ / _, _/ /___/ /|  / | |/ /___/ /  
        /_/  \____/\____/_____/____/_/ |_/_____/_/ |_/  |___/_____/   


          |=================================================|
          |status ;ᴘʀᴇᴍɪᴜᴍ                                  |
          |𝙾𝚄𝚃𝙷𝙾𝚁: 𝚁𝙴𝙽9999                                  |
          |version:0.5                                      |
          |=================================================|
                               ALL MENU
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
          ===================================================
"
       echo
       echo
       echo -n    "Pilih menu: "
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
# Fungsi untuk menampilkan pesan
function display_message {
  clear
  # Menampilkan teks satu per satu dengan nama pengguna
  text="Halo $name, Udah gitu aja
⠀⠀⠀⢀⣴⣿⣿⠿⣟⢷⣄⠀
⠀⠀⠀⢸⣏⡏⠀⠀⠀⢣⢻⣆
⠀⠀⠀⢸⣟⠧⠤⠤⠔⠋⠀⢿⡀
⠀⠀⠀⠀⣿⡆⠀⠀⠀⠀⠀⠸⣷
⠀⠀⠀⠀⠘⣿⡀⢀⣶⠤⠒⠀⢻⣇
⠀⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠈⢿⣆
⠀⠀⠀⠀⠀⠀⣿⡆⠀⠀⠀⠀⠀⠈⢿⣆⣠⣤⣤⣤⣤⣴⣦⣄⡀
⠀⠀⠀⠀⢀⣾⢿⢿⠀⠀⠀⢀⣀⣀⠘⣿⠋⠁⠀⠙⢇⠀⠀⠙⢿⣦⡀
⠀⠀⠀⢀⣾⢇⡞⠘⣧⠀⢖⡭⠞⢛⡄⠘⣆⠀⠀⠀⠈⢧⠀⠀⠀⠙⢿⣄
⠀⠀⣠⣿⣛⣥⠤⠤⢿⡄⠀⠀⠈⠉⠀⠀⠹⡄⠀⠀⠀⠈⢧⠀⠀⠀⠈⠻⣦
⠀⣼⡟⡱⠛⠙⠀⠀⠘⢷⡀⠀⠀⠀⠀⠀⠀⠹⡀⠀⠀⠀⠈⣧⠀⠀⠀⠀⠹⣧⡀
⢸⡏⢠⠃⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠸⣷⡀
⠸⣧⠘⡇⠀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⢣⠀⠀⠀⠀⢹⡇⠀⠀⠀⠀⣿⠇
⠀⣿⡄⢳⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠈⠆⠀⠀⠀⠁⠀⠀⠀⠀⣼⡟⠀
 ⢹⡇⠘⣇⠀⠀⠀⠀⠀⠀⠰⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⣼⡟
⠀⢸⡇⠀⢹⡆⠀⠀⠀⠀⠀⠀⠙⠁⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⢳⣼⠟⠀
⠀⠸⣧⣀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⢃⠀⢀⣴⡿⠁
⠀⠀⠈⠙⢷⣄⢳⡀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⣠⡿⠟⠛⠉⠀
⠀⠀⠀⠀⠈⠻⢿⣷⣦⣄⣀⣀⣠⣤⠾⠷⣦⣤⣤⡶⠟⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠉⠁⠀⠀⠀⠀⠀" 
 interval=0.05
  for (( i=0; i<${#text}; i++ )); do
    echo -n "${text:$i:1}"
    sleep $interval
  done
  echo
  echo "Tekan enter untuk kembali ke menu utama"
  read
}

# Fungsi untuk menampilkan informasi pengguna
function view_user_info {
  clear
  echo "Nama Pengguna: $name"
  echo "Tekan enter untuk kembali ke menu utama"
  read
}

# Fungsi untuk mengubah nama pengguna
function change_user_name {
  clear
  echo "Masukkan nama baru: "
  echo "pastikan Nama kurang dari 9 huruf/angka supaya pas sekotak!"
  read new_name
  name=$new_name
  echo "$name" > "$login_file"
  echo "Nama telah diubah menjadi $name "
sleep 1.5
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

#bebas aja yang penting happy
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

# Loop utama untuk menampilkan menu dan menangani pilihan
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
      echo "Keluar..."
      break
      ;;
    *)
      echo "Pilihan tidak valid, coba lagi."
      sleep 1
      ;;
  esac
done
