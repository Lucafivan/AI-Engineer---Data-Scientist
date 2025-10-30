# Unsupervised learning - model yang belajar tanpa label
# tujuannya adalah menemukan pola atau struktur dalam data

# K-means - membagi data menjadi k cluster berdasarkan jarak terdekat centroid
# iteratif sampai posisi centroid stabil

from sklearn.cluster import KMeans
import numpy as np
import matplotlib.pyplot as plt


X = np.array([[1, 2], [1, 4], [1, 0],
              [4, 2], [4, 4], [4, 0]])

kmeans = KMeans(n_clusters=2, random_state=42)
kmeans.fit(X)

print(f"Centroids: {kmeans.cluster_centers_}")
print(f"Labels: {kmeans.labels_}")

plt.scatter(X[:,0], X[:,1], c=kmeans.labels_)
plt.scatter(kmeans.cluster_centers_[:,0], kmeans.cluster_centers_[:,1], color='red', marker='x')
plt.show()

# Hierarchical Clustering p Buat tree/dendofram (alias menunjukan hubungan antar data)
# Bisa Agglomerative (gabung) atau divisive (dipceah)

from scipy.cluster.hierarchy import dendrogram, linkage

linked = linkage(X, method='ward')
dendrogram(linked)
plt.show()

# PCA (Principal Component Analysis) - Dimensionality Reduction
# Mengurangi dimensi data tapi tetap menyimpan variansi terbesar
# berguna unstuk visualisasi 2D/3D

from sklearn.decomposition import PCA

pca = PCA(n_components=2)
X_pca = pca.fit_transform(X)

plt.scatter(X_pca[:,0], X_pca[:,1])
plt.show()  