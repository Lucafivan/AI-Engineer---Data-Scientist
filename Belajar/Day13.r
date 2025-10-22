# Statitics - cabang ilmu matematika yang berfokus pada pengumpulan, analisis, dan interpretasi data.
# Statistika membantu kita untuk Mengetahui gambaran umum data, menarik kesilmpulan dari data, dan membuat keputusan yang lebih objektif

tinggi <- c(165, 170, 175, 180, 250)
# Mean - Rata rata
mean_val <- mean(tinggi)
# Median - Nilai teangah
median_val <- median(tinggi)
# Variance - Keragaman data
var_val <- var(tinggi)

cat("Mean: ", mean_val, "\n")
cat("Median: ", median_val, "\n")
cat("Variance: ", var_val, "\n")

# Hypothedsid testing - Tes klaim
t_test <- t.test(tinggi, mu = 175)
print(t_test)

# Bayes theorem - peluang bersyarat canggih
P_A <- 0.05
P_B_given_A <- 0.9
P_B <- 0.2

P_A_given_B <- (P_B_given_A * P_A) / P_B
cat("P(Atlet | Tinggi) = ", P_A_given_B, "\n")