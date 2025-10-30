# Binomial distribution - probabilitas sukses/gagal dalam n percobaan 
a <- dbinom(7, size=10, prob=0.5)
print(a)

# Normal distribution - distribusi sejenis, bell shaped 
b <- pnorm(180, mean=170, sd=10) - pnorm(160, mean=170, sd=10)
print(b)

# kasus 1: koim
# lempar 10 kali, peluang kepala = 0.5
# hitung probabilitas tepat 7 kepala
c <- dbinom(7, size=10, prob=0.5)
print(c)
#probabilitas 7 kepala atau lebih
d <- sum(dbinom(7:10, size=10, prob=0.5))
print(d)

# kasus 2: dadu
# Lempar dadu 6 sisi 5 kali, hitung peluang muncul angka 6 tepat 2 kali
e <- dbinom(2, size=5, prob=1/6)
print(e)

# Area under Normal Curve
# Kasus: Tinggi badan rata-rata 170 cm, sd 10 cm, hitung peluang tinggi antara 160–180 cm
f <- pnorm(180, mean=170, sd=10) - pnorm(160, mean=170, sd=10)
print(f)

# Simulasi Sampling & Plot Distribusi Mean Sample
# Langkah:
# Ambil populasi (misal eksponensial)
# Ambil sample berulang
# Hitung rata-rata tiap sample
# Plot distribusi rata-rata
set.seed(123)
pop <- rexp(1000, rate=0.5)  # populasi eksponensial
sample_means <- replicate(1000, mean(sample(pop, 30, replace=TRUE)))
hist(sample_means, breaks=30, main="Distribusi Rata-rata Sample", xlab="Mean")
