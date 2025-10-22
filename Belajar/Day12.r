# Probability - Peluang suatu kejadian terjadi
# nilainya selalu berada di antara 1 dan 0 yang berarti 0 -> tidak mungkin dan 1 -> pasti terjadi

# Seandainya kita punya kelas dengan 30 siswa 
# biasanya 27 siswa selalu hadir dan 3 sisanya terkadang absen
# maka kita punya dua peluang yakni peluang besar (siswa hadir) 27/30 = 0.9 dan peluang kecil (siswa absen) 3/30 = 0.1

# Jenis distribusi dasar
# 1. normal distribution
# Bentuknya kurva lonceng (bell curve)
# nilai tengah adalah angka yang paling sering muncul (dalam hal ini mean)
# data simetris
# contohnya sepert data bb dan tb pasien, data nilai ujian siswa
# 2. binomial distribution
# distribusi ini cocok untuk data yang kejadiannya memiliki 2 hasil -> sukses atau gagal
# misal seperti hadir vs absen, lulus vs tidak lulus, muncul angka vs gambar (lempar koin)

# conditional probability
# kalau probabilitas biasa hanya memiliki peluang kejadian tunggal
# maka conditionla probability ini memili peluan b apabila a terjadi

set.seed(42)
nilai <- rnorm(1000, mean=70, sd=10)
hist(nilai, breaks=20, col='skyblue')

hadir <- rbinom(1000, size=5, prob=0.9)
print(table(hadir))

p_hadir <- 0.9
p_ujian_jika_hadir <- 0.95
p_ujian_dan_hadir <- p_hadir * p_ujian_jika_hadir
print(p_ujian_dan_hadir)