# Decisiion Tree - model membuat "tree" keputusan fitur untuk prediksi kelas
# Mudah diinterpretasi tapi rawan overfitting kalau tree terlalu dalam

from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

X = [[1],[2],[3],[4],[5],[6]]
y = [0,0,0,1,1,1]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)

dt = DecisionTreeClassifier(random_state=42)
dt.fit(X_train, y_train)

y_pred = dt.predict(X_test)

print(f"Decision Tree Accuracy: {accuracy_score(y_test, y_pred)}")

# Random Forest - menggabungkan banyak decision tree > hasil lebih stabil
# biasanya lebih akurat dan tahan overfitting dibandingkan dengan single DT

from sklearn.ensemble import RandomForestClassifier

rf = RandomForestClassifier(n_estimators=100, random_state=42)
rf.fit(X_train, y_train)

y_pred = rf.predict(X_test)

print(f"Random Forest Accuracy: {accuracy_score(y_test, y_pred)}")

# K-Nearest Neighbors (KNN) - prediksi kelas berdasarkan tetangga terdekat di feature space
# parameter utama nya adalah k = jumlah tetangga
# mudah tapi bisa lambat kalau dataset besar

from sklearn.neighbors import KNeighborsClassifier

knn = KNeighborsClassifier(n_neighbors=2)
knn.fit(X_train, y_train)

y_pred = knn.predict(X_test)

print(f"KNN Accuracy: {accuracy_score(y_test, y_pred)}")

# Suppport Vector Machine (SVM) - Cari hyperlane terbaik yang memisahkan kelas
# Cocok untuk dataset high dimesional
# Bisa menggunakan kernel untuk data non linear

from sklearn.svm import SVC

svm = SVC(kernel="linear", random_state=42)
svm.fit(X_train, y_train)

y_pred = svm.predict(X_test)

print(f"SVM Accuracy: {accuracy_score(y_test, y_pred)}" )