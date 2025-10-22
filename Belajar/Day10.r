# Didalam calculus kita akan menemukan 3 hal, yakni:

# Derivative (tururnan) - mengukur seberapa cepat seuatu berubah terhadap suatu lainnya,
# kalau fungsi f(x) berubah saat x berubah, maka turunan f'(x) kasih tau laju perubahannya.

# Partial derivative (turunan parsial) - Digunakan jika fungsi memiliki variabel lebih dari satu, misalnya f(x, y)
# Partial derivative ini ngukur perubahan terhadap satu variabel, sementara variabel yang lain di anggap tetap.

# Gradient - Vektor yang berisi semua partial derivative
# menunjukkan arak kenaikan tercepat dari suatu fungsi.

# Ketika lagi naik gunung maka ketinggian akan di hitung, maka f(x, y)/fungsi dianggap sebagai ketinggian.
# dan posisi kita pada saat itu adalah (x, y).
# derivative adalah hasil perhitungan seberapa curam kalau kita jalan ke satu arah (misal ke timur saja).
# partial derivatice hasil perhitungan tingkat kecuraman kalu kita ubah arah x (barat dan timur) tapi y (utara - selatan) dianggap tidak diubah.
# gradient adalah cara menentukan arah paling curam yang dicatat karena arah paling curam merupakan titik tercepat buat naik ke puncak.

# kenapa turunan penting untuk kita?
# karena ini adalah cara kita untuk menganalisa dan mereduksi jumlah error dan selain itu Machine Learning juga belajar dari error maka cara menurunkan error adalah lewat turunan.

library(Deriv)
# single variable derivative
f <- expression(x^2 + 3*x + 2)
print(Deriv(f, "x"))

# partial derivative
g <- expression(x^2 * y + 3*y)
print(Deriv(g, "x"))
print(Deriv(g, "y"))

# gradient
gradient <- c(Deriv(g, "x"), Deriv(g, "y"))
print(gradient)