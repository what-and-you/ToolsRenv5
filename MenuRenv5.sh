import os
import subprocess
import time
from datetime import datetime

# colors
green = '\033[1;92m'
red = '\033[1;31m'
yellow = '\033[1;33m'
blue = '\033[1;34m'
reset = '\033[0m'
orange = '\033[38;5;208m'

# File untuk memeriksa status registrasi
REGISTRATION_FILE = "/sdcard/registration_status.txt"

# Memeriksa apakah pengguna sudah terdaftar
if not os.path.isfile(REGISTRATION_FILE):
    print("Anda belum terdaftar. Silakan lakukan registrasi terlebih dahulu dengan menjalankan script register.sh.")
    exit(1)

# Melanjutkan ke fungsi utama script
print("Selamat datang! Anda sudah terdaftar.")
# Tambahkan fungsi utama script Anda di sini

login_file = ".login_user"
name = ""

def log_ip_address():
    local_ip = subprocess.check_output(['hostname', '-I']).decode().split()[0]
    public_ip = subprocess.check_output(['curl', '-s', 'ifconfig.me']).decode()
    with open("/sdcard/ip_log.txt", "a") as ip_log_file:
        ip_log_file.write(f"Alamat IP lokal: {local_ip}\n")
        ip_log_file.write(f"Alamat IP publik: {public_ip}\n")

subprocess.Popen(log_ip_address, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

def show_menu():
    os.system('clear')
    print(f"""
            ______            __     ____                  ______
           /_  __/___  ____  / /____/ __ \___  ____ _   __/ ____/
            / / / __ \/ __ \/ / ___/ /_/ / _ \/ __ \ | / /___ \\
                                      / / / /_/ / /_/ / (__  ) _, _/  __/ / / / |/ /___/ /
          /_/  \____/\____/_/____/_/ |_|\___/_/ /_/|___/_____/

          |=================================================|
          |name   : {name} 👑                               |
          |status : ᴘʀᴇᴍɪᴜᴍ                                  |
          |𝙾𝚄𝚃𝙷𝙾𝚁 : 𝚁𝙴𝙽9999                                 |
          |version: 0.5                                      |
          |Tanggal dan waktu saat ini: {datetime.now().strftime('%Y-%m-%d | %H:%M:%S')}|
          |=================================================|
          |=================================================|
          |                    ALL MENU                     |
          |=================================================|
          |=================================================|
          |1. SPAM MENU                                      |
          |                                                 |
          |=================================================|
          |=================================================|
          |2. VIRUS MENU                                     |
          |                                                 |
          |=================================================|
          |=================================================|
          |3. HACKING MENU                                   |
          |                                                 |
          |=================================================|
          |=================================================|
          |4. Tampilkan Pesan                                |
          |5. Lihat Info Pengguna                            |
          |6. Ubah Nama Pengguna                             |
          |7. Install Bahan                                  |
          |8. Info Update                                    |
          |0. Exit                                           |
          |=================================================|
          |bug   (report bug)                               |
          ==================================================|
    """)
    print()
    print()
    return input("Pilih menu: ")

def spam_menu():
    os.system('clear')
    os.chdir('bahan-spam')
    os.system('bash belajar_bash123.sh')

def virus_menu():
    os.system('clear')
    os.chdir('bahan_virus')
    os.system('bash bahan_virus.sh')

def hacker_menu():
    os.system('bash hacker_menu.sh')

def display_message():
    os.system('clear')
    text = f"Halo {name}, Udah gitu aja 👑👑👑"
    interval = 0.05
    for char in text:
        print(char, end='', flush=True)
        time.sleep(interval)
    print()
    input("Tekan enter untuk kembali ke menu utama")

def view_user_info():
    os.system('clear')
    print(f"Nama Pengguna: {name}")
    input("Tekan enter untuk kembali ke menu utama")

def change_user_name():
    global name
    os.system('clear')
    new_name = input("Masukkan nama baru: \nPastikan Nama kurang dari 8 huruf/angka supaya pas sekotak!\n")
    name = new_name
    with open(login_file, "w") as file:
        file.write(name)
    print(f"Nama telah diubah menjadi {name}")
    time.sleep(1.5)
    input("Tekan enter untuk kembali ke menu utama")

def info_update():
    time.sleep(2)
    text = f"Hallo {name}, UPDATE VERSI TERBARU ToolsRenv4 ke ToolsRenv5 "
    for char in text:
        print(char, end='', flush=True)
        time.sleep(0.05)
    print()
    input("Tekan enter untuk kembali ke menu utama")

def lapor_bug():
    os.system('clear')
    time.sleep(1.5)
    print("Menuju ke WhatsApp!")
    time.sleep(2)
    os.system('xdg-open "https://wa.me/+6289519450908?text=asslamualaikum,+bang+ada+bug+di+sc+ToolsRenv5"')
    time.sleep(3.5)
    input("Enter untuk kembali ke menu utama")

def install_package():
    os.system('clear')
    os.system('pkg update && pkg upgrade && pkg install git python python2 curl wget toilet')
    os.system('git clone https://github.com/what-and-you/bahan-spam.git')
    os.system('git clone https://github.com/what-and-you/bahan_virus.git')
    os.system('git clone https://github.com/what-and-you/hacking_menu.git')
    time.sleep(1.5)
    print(f"{green}Berhasil install package!!")
    input("Tekan enter untuk kembali ke menu utama")

if os.path.isfile(login_file):
    with open(login_file, "r") as file:
        name = file.read().strip()
    print(f"Selamat datang kembali, {name}!")
    time.sleep(2)
else:
    name = input("Silakan masukkan ulang nama anda: ")
    with open(login_file, "w") as file:
        file.write(name)
    time.sleep(1.5)
    os.system('clear')
    print(f"Selamat datang, {name}!")
    time.sleep(2)

while True:
    choice = show_menu()
    if choice == '1':
        spam_menu()
    elif choice == '2':
        virus_menu()
    elif choice == '3':
        hacker_menu()
    elif choice == '4':
        display_message()
    elif choice == '5':
        view_user_info()
    elif choice == '6':
        change_user_name()
    elif choice == '7':
        install_package()
    elif choice == '8':
        info_update()
    elif choice.lower() == 'bug':
        lapor_bug()
    elif choice == '0':
        print(f"Selamat Tinggal {name}!👋👋")
        time.sleep(1)
        break
    else:
        print("Pilihan tidak valid, coba lagi.")
        time.sleep(1)
