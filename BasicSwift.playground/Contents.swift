import UIKit

// Let digunakan ketika menggunakan nilai yang konstan atau tetap
// Sedangkan untuk var adalah offsite atau kebalikan dari let
// Example

let constant = 10
var y = 10
var x = y+constant

print(x)

//Untuk membuktikan let dan var
//constant = 20
//x = 30

//Bekerja dengan tipe data number
//Untuk membuat variabel number dengan bilangan bulat kita bisa menggunakan contoh di bawah ini
var bilangan1: Int = 10
//Untuk bilangan decimal kita bisa menggunakan Double
var bilangan2: Double = 24.6

//Mendapatkan result, antara tipe data int dan double tidak bisa langsung di jumlahkan secara langsung
//Jadi kita bisa mengubah tipe data number nya atau melakukan konversi nilai
var result: Double = Double(bilangan1)+bilangan2
print(result)

//Bekerja dengan text
//Text atau biasa kita sebut sebagai sebuah string adalah sebuah kumpulan kata yang biasanya di tandai dengan sebuah kutip
var message = "iOS Developer Expert"
print(message)

//Kita bisa menggabungkan dua atau lebih string dengan menggunakan operator + dengan catatan sama - sama
//Bertipe data string
//Example
var greeting = "Haloooo "
let myName = "Vicky Irwanto"
var combineOfString = greeting+myName

print(combineOfString)

//Jika ingin mengubah string menjadi uppercase semua kita bisa menggunakan builtin method dari swift yaitu uppercased()
print(combineOfString.uppercased())

//Untuk lowercased swift juga menyiapkan built in method yaitu menggunakan lowercased()
print(combineOfString.lowercased())

//Dan jika kita ingin menghitung berapa karakter yang digunakan dalam string yang kita punya atau deklarasikan kita bisa menggunakan method count termasuk spasi
print(combineOfString.count)

//Kita juga bisa menggabungkan dua buah string dengan sebuah int dengan syarat mengkonversi nilai int ke string terlebih dahulu yang bisa dilakukan dalam dua cara
var bookPrice = 36
var numOfCopies = 10
var totalPrice = bookPrice*numOfCopies
var totalPriceMessage1 = "The price of books is $" + String(totalPrice)
var totalPriceMessage2 = "The price of books is $\(totalPrice)"

print(totalPriceMessage1)
print(totalPriceMessage2)

//Seperti dalam bahasa pemerograman lain nya swift juga memiliki sistem control flow salah satunya adalah if-else
//example

var timeImWakeUp = 6

if timeImWakeUp == 6 {
    print("Cook yourlself a big breakfast!")
}else{
    print("Go out for breakfast")
}

//Selain menggunakan if-else swift juga menyediakan switch layaknya bahasa pemerogram lain.
//Example

var waktuAkuBangun = 10

switch waktuAkuBangun{
case 10 :
    print("Yuk buat sarapan yang banyak")
default :
    print("Yaudahlah makan di luar aja")
}

//Contoh lainnya
//kita mempunyai sebuah study case dimana kita merupakan seorang pekerja kemudian ada sebuah kriteria dari kita dimana
//Jika kita mendapatkan bonus lebih besar sama dengan 10000 kita akan pergi ke paris dan london
//Jika bonus antara 5000 dan 9999 maka akan pergi ke tokyo
//Jika bonus antara 1000 dan 4999 maka akan pergi ke bangkok
//buatlah menggunakan if-else
//dan switch


//Versi if-else
var bonus = 10000

if bonus >= 10000 {
    print("Liburan ke Paris dan London")
}else if bonus >= 5000 && bonus < 10000{
    print("Liburan ke Tokyo")
}else if bonus >= 1000 && bonus < 5000{
    print("Liburan ke Bangkok")
}else{
    print("Di rumah ajalah !!!")
}

//Versi switch

switch bonus{
case 10000...:
    print("Liburan ke Paris dan London")
case 5000...9999:
    print("Liburan ke Tokyo")
case 1000...4999:
    print("Liburan ke Bangkok")
default:
    print("Di rumah ajalah !!!")
}


//Array dan dictionaries
var booksCollection = ["Harry Potter", "Atomic Habbits", "Pyschology of Money"]
print(booksCollection)

//Jika kita menggunakan var sebagai init variabel kita maka kita bisa mengubah data dalam variabel dengan menggunakan fungsi append
//Example
booksCollection.append("The Inttelegent Investor");
print(booksCollection)

//Kita juga menghitung jumlah elemen array dalam sebuah variabel menggunakan fungsi count
//Example
print(booksCollection.count)

//Kita bisa mengakses data array secara individual dengan cara menunjuk pada spesifik indeks elemen data array
//Example
print(booksCollection[0])
print(booksCollection[1])
print(booksCollection[2])
print(booksCollection[3])
//Namun cara manual seperti tentu cukup rumit karena harus menulis ulang beberapa baris code, untuk itu kita bisa menggunakan perulangan
//Example
for i in 0...booksCollection.count-1{
    print(booksCollection[i])
}

//Atau bisa menggunakan cara kedua yaitu
for books in booksCollection{
    print(books)
}

//Kita juga bisa membuat array kita menjadi sebuah collection dengan unique key pada setiap data sesuai dengan yang kita define
var bookCollectionDict = ["1328683788": "Tool of Titans", "0307463745": "Rework", "1612060919": "Authority"]

//Cara mengakses nya jika secara manual

print(bookCollectionDict["0307463745"]!)

//Atau kita bisa menggunakan perulangan
for (key, value) in bookCollectionDict{
    print("ISBN : \(key)")
    print("Title : \(value)")
}

var emojiDict: [String: String] = [
    "👻" : "Ghost",
    "💩" : "Poop",
    "😤" : "Angry",
    "😱" : "Scream",
    "👾" : "Alien"
]


var wordToLookUp = "👻"
var meaning = emojiDict[wordToLookUp]

print(meaning!)

wordToLookUp = "💩"
meaning = emojiDict[wordToLookUp]

print(meaning!)

//Memahami Optional fitur terbaru dalam swift
//Pada dasarnya optional merupakan sebuah tipe data dimana kita bisa memberikan nilai atau tidak pada sebuah variabel
//Untuk membuat sebuah optional type of data kita bisa menggunakan question mark

var jobTitle : String?
jobTitle = "iOS Developer"

//Metode force unwrap
if jobTitle != nil {
    print("My jobs is \(jobTitle!)")
}

//Agar kita bisa mengambil nilai real dari sebuah tipe data optional kita bisa menggunakan tanda seru ! pada akhir variabel untuk menunjukan bahwa kita hanya mengambil nilainya, kemudian bisa jga memaksa menunwrap dengan sebuah if dgn mengecek apakah nilai dari variabel tersebut nil atau tidak

//Metode kedua untuk mengakses nilai pada optional adalah dengan menggunakan optional bindings dan ini biasanya cara yang disarankan untuk bekerja dengan optional

//Example

if let jobTitleWithValue =  jobTitle {
    print("My jobs is " + jobTitleWithValue)
}
//Di cara kedua ini kita sudah tidak perlu memaksa xcode untuk mengeksekusi variabel dengan tanda seru

//kita bisa memanipulasi sebuah let dengan sebuah class array
//Example

let oldArray = NSMutableArray(
    array: [
    "foo",
    "bar"]
)

//Kita bisa menambahkan array data baru dengan menggunakan add
oldArray.add("vicky")
var newArray = oldArray
newArray.add("reyhan")
newArray
oldArray

//Kenapa hasil antara oldArray dan jga newArray bisa sama dikarenakan kita menggunakan sebuah class dari NSMutableArray bukan sebuah struktur array biasa.








