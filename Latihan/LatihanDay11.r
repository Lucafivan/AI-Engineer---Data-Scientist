x <- c(1, 2, 3, 4)
y <- c(2, 3, 4, 5)

m <- 0
c <- 0
alpha <- 0.01
epochs <- 1000

n <- length(x)

for (i in 1:epochs) {
    y_pred <- m*c + c
    dm <- (-2/n) * sum(x * (y - y_pred))
    dc <- (-2/n) * sum(y - y_pred)

    m <- m - alpha * dm
    c <- c - alpha * dc
}
cat("m:", m, "c:", c, "\n")