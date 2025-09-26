#List adalah struktur data yang bisa menyimpan banyak item dalam urutan tertentu. Bisa diubah (mutable) dan boleh campur tipe data.
#-> Menyimpan kumpulan data yang bisa diakses, diubah, ditambah, atau dihapus.
#List itu kayak rak yang bisa diisi berbagai barang. Kamu bisa menaruh, mengambil, atau menukar barang sesuka hati.

my_list = [1, 2, 3, "halo"]

#Dan cara mengaksesnya
print(my_list[1]) #-> akan menghasilkan angka 2, karena pointernya akan menunjukkan lokasi item dalam urutan index.

my_list[2] = 99 #-> akan mengubah item pada index yang di tunjukkan
print(my_list)

my_list.append("akhir") #-> akan menambahkan item baru ke index paling terakhir yang masih kosong.
print(my_list)

my_list.remove("halo") #-> akan menghapus item yang diminta unt;uk dihapus
print(my_list)

#Tuples adalah ist tapi tidak bisa diubah (immutable).
#-> Menyimpan data yang tidak boleh berubah, misal koordinat atau konfigurasi.
#Tuple itu kayak alamat rumah setelah ditulis, tidak bisa diubah.

my_tuple = (1, 2, 3)
print(my_tuple[0])#-> cara mengaksesnya juga sama dengan list, namunn....

# jika fungsi yang dapat merubah, menghapus atau semcamnya akan mengakibatkan error, karena isinya tidak dapat digantikan
# my_tuple.append("akhir")
# my_tuple.remove(2)
# my_tuple[1] = 99

#dictionary adalah variabel yang dapat menyimpan pasangan key → value.
#-> Mencari informasi berdasarkan nama (key), cepat dan mudah.
#Dictionary itu kayak kamus, kata (key) → artinya (value).

my_dict = {"buah": "apel", "warna": "merah"}

print(my_dict["buah"]) #-> akan menampilkan nilai (value) yang disimpan oleh buah yang dalam hal ini sebagai key.

my_dict["warna"] = "hijau" #-> akan merubah value yang disimpan oleh key yang dipanggil
print(my_dict)

my_dict["asal"] = "Indonesia" # -> akan menambahkan key beserta value baru
print(my_dict)

#Sets berfungsi untuk menyimpan data unik, tidak berurutan.
# -> Mengecek atau menyimpan item unik.
#Set itu kayak kotak koleksi stiker unik tidak boleh ada duplikat.

my_set = {1, 2, 2, 3} # -> hanya akan menampilkan 1 angka 2 karena angka 2 sama dan diangggap unique oleh python
print(my_set)

my_set.add(4) # -> akan menambahkan item baru kedalam sets
print(my_set)

my_set.remove(2)# -> pada set menghapus tergantung dengan isi yang sama dengan item bukan berdasarkan index
print(my_set)

#Loops digunakan untuk mengulang suatu blok kode.
# -> Mempermudah melakukan aksi berulang tanpa menulis kode berulang.
#Loop itu kayak mesin cuci — sekali tekan, bisa cuci baju sampai bersih tanpa repot manual tiap potong baju.

# for loop
for i in [1, 2, 3]:
    print(i)

# while loop
count = 0
while count < 3:
    print(count)
    count += 1

#Functions adalah blok kode yang bisa dipanggil berkali-kali.
#-> Mengurangi duplikasi kode, mempermudah maintenance, dan membuat program lebih terstruktur.
#Function itu kayak resep masakan — tinggal dipanggil kapan pun mau masak, ga perlu nulis step lagi.

def greet(name): #-> membuat function greet dengan meminta pengembalian teks berupa "Halo {name}" {name} sendiri merupakan cara memanggil unti yang sudah disimpan sebelumnya.
    return f"Halo {name}!" #-> ini adalah proses meminta pengembalian teks

print(greet("Khanif")) #-> dan ini adalah contoh penggunaannya

def tambah(a, b=5): #-> ini adalah contoh tambahan dengan menambahkan value default kedalam salah satu key
    return a + b #-> ini adalah hasil yang diminta, dan apabila nantinya pengguna tidak memberikan value untuk b, maka seperti apa yang sudah tertera di atas, b akan otomatis di isi oleh value default

print(tambah(3)) #-> ini merupakan contoh dari penggunaan tanpa nilai b
print(tambah(3, 2)) #-> ini merupakan contoh menggunakan kedua key.