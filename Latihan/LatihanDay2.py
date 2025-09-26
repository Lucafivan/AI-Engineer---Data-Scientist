#Latihan List
friends = ["Fulan", "Fulin", " Fulun"]
print(friends)

friends.append("Fulinatun")
print(friends)

friends.remove("Fulin")
print(friends)

#Latihan Tuple
angka = (1, 2, 3, 4, 5)
print(angka[4])

#Latihan Dictionary
MIS1 = {"Nama": "Khanifan", "Umur": 20}
print(MIS1)

MIS1["Umur"] = 21
print(MIS1["Umur"])
print(MIS1)

#Latihan Sets
Unique = {1, 1, 2, 3, 3}
print(Unique)

#Latihan Loops
for i in [1, 2, 3, 4, 5]:
    print(i)

#Latihan Function
def perkalian(a, b):
    return a * b

print(perkalian(4, 5))