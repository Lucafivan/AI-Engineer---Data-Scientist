# Supervised Learning - model yang belajar dari data berlabel (X -> y)
# memiliki dua tipe Regression dan Classification

# Linear Regression (Regression)
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

X = [[1], [2], [3], [4], [5]]
y = [2, 4, 6, 8, 10]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

model = LinearRegression()
model.fit(X_train, y_train)

y_pred = model.predict(X_test)

mse = mean_squared_error(y_test, y_pred)
print(f"MSE: {mse}")

# Logistic Regression (Classification)
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, f1_score

X = [[1],[2],[3],[4],[5],[6]]
y = [0,0,0,1,1,1]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)

model = LogisticRegression()
model.fit(X_train, y_train)

y_pred = model.predict(X_test)

acc = accuracy_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred)

print(f"accuracy: ", {acc})
print("F1: ", {f1})

from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression, LogisticRegression
from sklearn.metrics import mean_squared_error, accuracy_score, f1_score

# 1. Data
X = [[1],[2],[3],[4],[5]]
y_reg = [2,4,6,8,10]       # regression
y_clf = [0,0,1,1,1]        # classification

# 2. Split
X_train, X_test, y_train_reg, y_test_reg = train_test_split(X, y_reg, test_size=0.2, random_state=42)
_, _, y_train_clf, y_test_clf = train_test_split(X, y_clf, test_size=0.2, random_state=42)

# 3. Model
reg_model = LinearRegression()
reg_model.fit(X_train, y_train_reg)
clf_model = LogisticRegression()
clf_model.fit(X_train, y_train_clf)

# 4. Prediksi
y_pred_reg = reg_model.predict(X_test)
y_pred_clf = clf_model.predict(X_test)

# 5. Evaluasi
print("Regression MSE:", mean_squared_error(y_test_reg, y_pred_reg))
print("Classification Accuracy:", accuracy_score(y_test_clf, y_pred_clf))
