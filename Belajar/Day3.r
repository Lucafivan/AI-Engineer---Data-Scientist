# Dibawah ini merupakan contoh penggunaan variabel di dalam R, terkadang boleh menggunakan = sebagai ganti <- namun dapat menyebabkan kebingungan
# Variabel - tempat menyimpan data  
nama <- "Khanifan"
umur <- 19
umur <- umur + 1
print(paste("Halo", nama, "Umurmu Sekarang", umur))

# Vector - sekumpulan data sejenis dalam satu variabel
# R dirancang untuk menemani programmer saat berkelana di dunia statistik dan analisa data, jadi programmer bisa memanipulasi banyak data sekaligus
# tanpa harus loop manual
# Vector ini bisa saja berbentuk numeric, karakter bahkan logika
# dan apabila kita melakukan operasi antar vector akan menyebabkan operasi itu berlaku untuk seluruh elemen sekaligus yang dinamakan dengan Vectorized
angka <- c(1, 2, 3, 4, 5)
print(angka + 10)
print(angka[3])

# Dataframe - tabel data 2 dimensi, mirip dengan excel
# ini menjadi hal penting karena apabila ditemukan dengan data nyata, pada umumnya ga cuma menggunakan 1 vector. Jadi Dataframe bisa bantu untuk gabungin
# jadi satu agar strukturnya jadi rapi dan mudah diolah
df <- data.frame(
    Nama = c("Fulan", "Rina"),
    Umur = c(29, 87),
    Score = c(90, 85)
)
print(df$Nama)
print(df[df$Score > 85, ])

# Statistik dasar - hitung nilai seperti mean, median, sd, min, max  dari vector
# Kunci dasar dalam melakukan analisa adalah mengerti angka dan distribusi angka. 
angka <- c(10, 20, 30, 40, 50)

# Menghitung berbagai nilai statistik dasar
rata_rata <- mean(angka)      # rata-rata
tengah <- median(angka)       # nilai tengah
simpangan_baku <- sd(angka)   # standard deviation
minimum <- min(angka)         # nilai terkecil
maksimum <- max(angka)        # nilai terbesar
jumlah <- sum(angka)          # jumlah total
range_nilai <- range(angka)   # nilai terendah & tertinggi sekaligus

# Menampilkan hasil
cat("Hasil Statistik:\n")
cat("Mean       :", rata_rata, "\n")
cat("Median     :", tengah, "\n")
cat("Standar Dev:", simpangan_baku, "\n")
cat("Min        :", minimum, "\n")
cat("Max        :", maksimum, "\n")
cat("Sum        :", jumlah, "\n")
cat("Range      :", range_nilai[1], "sampai", range_nilai[2], "\n")
