# Neural Network (NN)
# # sistem yang cara kerjanya mengikuti cara kerja otak
# neuron (node) -> unit perhitungan
# bobot (weights)-> seberapa kuat hubungan anatara neuron
# aktivasi -> memnentukan apakah neuron aktif atau tidak
# output -> hasil akhir dari proses

# Komponen inti pada NN
# Input Layer -> penerima data
# Hidden Layer (Dense) -> pelajar pola
# Output Layer -> hasil pembelajaran
# Activation Function -> pemberi non-linearitas (ReLu, Sigmoid, Tanh)

# Contoh dense NN dengan 1 hidden layer

import numpy as np
import matplotlib.pyplot as plt
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
from tensorflow.keras.optimizers import SGD

# Data sederhana (XOR)
# input: dua angka biner, output: hasil XOR
x = np.array([[0, 0], [0, 1], [1, 0], [1, 1]])
y = np.array([[0], [1], [1], [0]])

# model: 2 input -> 2 neuron hidden -> 1 output
model = Sequential([
    Dense(2, input_dim=2, activation='relu'),
    Dense(1, activation='sigmoid')
])

# optimizer + loss
model.compile(optimizer=SGD(learning_rate=0.1), loss='binary_crossentropy', metrics=['accuracy'])

# latih model
history = model.fit(x, y, epochs=2000, verbose=0)

# evalusi hasil
loss, acc= model.evaluate(x, y, verbose=0)
print(f"Akurasi: {acc*100:.2f}%")

# prediksi
print("Prediksi XOR: ")
print(model.predict(x))

#visualisasi loss
plt.plot(history.history['loss'])
plt.title('Training Loss')
plt.xlabel('Epoch')
plt.ylabel('Loss')
plt.show()