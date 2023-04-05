import Foundation

//Int bilangan mulai dari 2^-10 sampai 2^10

let namaAing : String = "Vicky"
let umurAing: Int = 22

print("Nama saya adalah \(namaAing) dan Umur saya adalah \(umurAing)")


let isFasting: Bool = true

print("Apakah saya puasa hari ini ?", isFasting)


//if u want multiline string u can use petik """"""

var alamat : String = """
🥰😇
aku adalah kamu
kamu adalah aku
"""

print(alamat)

let a : Double = 0
let b = 1.0
let sum: Double = a + b
type(of: sum)
print(sum)

//Function
func bayuGanteng(_ akhir: Int, _ awal: Int, _ namaSiGanteng: String, _ personality: String = "Ganteng"){
    print("\(namaSiGanteng) adalah Orang ")
    
    if(awal<akhir){
        bayuGanteng(akhir, awal+1, namaSiGanteng)
    }
}

bayuGanteng(17, 1, "Bayu")

