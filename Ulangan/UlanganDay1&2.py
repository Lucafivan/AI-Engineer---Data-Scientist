#Soal Ulangan
#Kamu diminta membuat program Python yang melakukan hal berikut:
#Input dari user: beberapa angka yang dipisahkan spasi, misal "10 5 12 7 20"
#Simpan angka-angka itu ke dalam list dan tuple
#Hitung:
#Total angka (sum)
#Angka terbesar
#Angka terkecil
#Jumlah angka genap
#Buat dictionary yang menyimpan:
#"total" → total angka
#"max" → angka terbesar
#"min" → angka terkecil
#"even_count" → jumlah angka genap
#Cetak dictionary itu sebagai output

numbers = input("Masukkan angka dipisah spasi: ")  
numbers_list = [int(n) for n in numbers.split()]
numbers_tuple = tuple(numbers_list)

total = sum(numbers_list)
max_num = max(numbers_list)
min_num = min(numbers_list)
even_count = len([n for n in numbers_list if n % 2 == 0])

result = {
    "total": total,
    "max": max_num,
    "min": min_num,
    "even_count": even_count
}

print(result)