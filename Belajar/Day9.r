#Eigenvalue dan eigenvector - pasangan spesial dalam dunia matriks
# secara sistematis jika A (matriks transformasi) adalah matriks persegi dan v adalah vector
# maka Av = λv, dimana λ adalah skalar (eigenvalue)
# Linear transformasi - cara matriks mengubah ruangnya
# - rotasi, refleksi, skala, shear

# tidak semua vector akan berubah arah ketika di transformasi
# vector yang tidak berubah arah disebut eigenvector

# kenapa ini penting?
# didalam dunia nyata apabila kita menggunakan matriks untuk mentransformasi data
# kita ingin mengetahui apakah ada arah tertentu yang tidak berubah
# atau berubah hanya dalam skala tertentu
# contoh:
# PCA (principal component analysis) - teknik reduksi dimensi, dimana kita mencari arah
# yang mempertahankan variansi terbesar dalam data
# Graph analysis - eigenvector dari matriks adjacency dapat mengungkap node paling penting
# dalam jaringan
# Quantum mechanics - eigenvalue dan eigenvector digunakan untuk memodelkan
# perilaku partikel pada tingkat subatomik
# Vibration modes - dalam teknik sipil dan mekanik, eigenvalue dan eigenvector
# digunakan untuk menganalisis mode getaran struktur
# dan masih banyak lagi

A <- matrix(c(2, 1,
              1, 2), nrow=2, byrow=TRUE)

eigen(A)