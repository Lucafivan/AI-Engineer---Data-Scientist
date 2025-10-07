# Linear Algebra - cabang matematika yang mempelajari vector, matriks, dan operasi yang bisa dilakukan pada mereka.
# penjumlahan - pengurangan, perkalian, transpose. Semua ini dilakukan karena kita bertujuan untuk menyederhanakan dan menganalisa
# data numeric secara linear, dan ini juga sering digunakan di dalam dunia statistika, data analysis sampai ke machine learning.

# Konsep kunci
# Vector - c() > panah di ruang, Bisa diukur panjangnya, arahnya, dan dikombinasikan dengan vector lain.
#v <- c(2, 3, 4) #panah dari titik 0 ke titik (2,3,4)

#Matriks - matrix() > papan excel/tabel angka, memiliki baris (individu/data point), memiliki kolom (fitur/atribut), bisa dimasukkan fungsi aritmatika
#m <- matrix(1:6, nrow=2, ncol=3)

#Dot Product - %*% > skor kesamaan arah, bayangin kita sedang melihat 2 anak panah, nah fungsi Dot product adalah untuk menghitung seberapa searah kedua anak panah ini
#v1 %*% v2 #hasilnya scalar (angka)

#Transpose - t() > balik papan, baris jadi kolom, kolom jadi baris
#t(m)

#Baris/Kolom Sum - rowSums() / colSums()

#VECTOR
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)

#DOT PRODUCT
print(v1 %*% v2)

#MATRIKS
m <- matrix(1:6, nrow=2, ncol=3)
print(m)

#TRANSPOSE
print(t(m))

#perkalian matriks
m1 <- matrix(1:4, nrow=2)
m2 <- matrix(5:8, nrow=2)
print(t(m1) %*% m2)

#Sum per baris/kolom
print(rowSums(m))
print(colSums(m))

