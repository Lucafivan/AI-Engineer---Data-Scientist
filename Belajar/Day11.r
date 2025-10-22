# Gradient Descent - algoritma untuk mencari nilai terbaik (minimum) dari sebuah fungsi dengan cara bergerak sedikit demi sedikit
# ke arah penurunan tercepat (arah gradien negatif)

# Hal ini seperti saat kita sedang berada di gunung yang berkabut sampai sampai kita tidak dapat melihat peta di dekat mata kita,
# namun sebagai manusia kita dapat mersakan kemiringan tanah disekitar kaki kita, maka tiap langkah kita itu memperhatikan
# apakah kita semakin turun atau tidak, tiap langkah yang kita ambil itu disebut sebagai arah gradien negatif, jika langkah 
# terlalu besar kita bisa aja jatuh ke jurang namun kalau terlalu kecil kita akan terlalu lama menemukan jalan keluar

x <- c(1, 2, 3, 4, 5)
y <- c(3, 4, 2, 5, 6)

m <- 0
c <- 0
alpha <- 0.001
epochs <- 1000

n <- length(x)

for (i in 1:epochs){
    y_pred <- m*x + c
    dm <- (-2/n) * sum(x * (y - y_pred))
    dc <- (-2/n) * sum(y - y_pred)

    m <- m - alpha * dm
    c <- c - alpha * dc
}

cat("m:", m, "c:", c, "\n")

alpha <- 0.01
for (i in 1:epochs){
    y_pred <- m*x + c
    dm <- (-2/n) * sum(x * (y - y_pred))
    dc <- (-2/n) * sum(y - y_pred)

    m <- m - alpha * dm
    c <- c - alpha * dc
}

cat("m:", m, "c:", c, "\n")

alpha <- 0.1
for (i in 1:epochs){
    y_pred <- m*x + c
    dm <- (-2/n) * sum(x * (y - y_pred))
    dc <- (-2/n) * sum(y - y_pred)

    m <- m - alpha * dm
    c <- c - alpha * dc
}

cat("m:", m, "c:", c, "\n")

alpha <- 1  
for (i in 1:epochs){
    y_pred <- m*x + c
    dm <- (-2/n) * sum(x * (y - y_pred))
    dc <- (-2/n) * sum(y - y_pred)

    m <- m - alpha * dm
    c <- c - alpha * dc
}

cat("m:", m, "c:", c, "\n")