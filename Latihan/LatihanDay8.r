a <- c(2, 3, 4)
b <- c(1, 0, -1)
print(a %*% b)

mat = matrix(1:6, nrow=2, ncol=3)
print(t(mat))
print(rowSums(mat))
print(colSums(mat))

set.seed(123)
scores <- matrix(sample(50:100, 9, replace=TRUE), nrow=3, ncol=3)
rownames(scores) <-c("Ando", "Sean", "Budiyono")
colnames(scores) <-c("Math", "IPA", "Bahasa")
print(scores)

total_scores <- rowSums(scores)
print(total_scores)

mean_subject = colMeans(scores)
print(mean_subject)