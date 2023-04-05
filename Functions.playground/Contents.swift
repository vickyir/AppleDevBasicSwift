import Foundation

func noArgumentFunction(){
    "I dont have an argument"
}

noArgumentFunction()

func plusTwoFunction(value: Int){
    let newValue = value + 2
}

plusTwoFunction(value: 30)

func plusTwoFunctionsReturn(value: Int)-> Int{
    value+2
}

plusTwoFunctionsReturn(value: 23)


func customAdd(value1 : Int, value2: Int)-> Int{
    return value1 + value2
}

customAdd(value1: 20, value2: 30)

//Untuk mengignore internal params yang digunakan pada func kita bisa menggunakan _ underscore

func customSubtracted(_ value1: Int, _ value2: Int) -> Int{
    value1 - value2
}

customSubtracted(30,20)

//kita harus berhati hati ketika membuat sebuah func karena ketika kita tidak mengambil value dari value tersebut maka akan dianggap never user and cara fix nya adalah dengan sebagai berikut

@discardableResult
func myCustomAdd(_ lhs: Int, _ rhs: Int)-> Int{
    lhs+rhs
}

myCustomAdd(10,20)

func doSomethingComlicated(with value : Int)-> Int{
    func mainLogic( value: Int)-> Int{
        value + 2
    }
    
    return mainLogic(value: value + 3)
}

doSomethingComlicated(with: 30)

//Rekursif func

func rekursif(_ batas : Int, _ awal: Int){
   
    "Hallo dunia"
    
    if awal < batas{
        rekursif(batas, awal+1)
    }
    
}

rekursif(10, 1)

for _ in 1...10{
    "Hallo dunia"
}

// We can also past our func with a default value

func getFullName(_ firstName : String =  "Vicky", _ lastName : String = "Irwanto")-> String{
    "\(firstName) \(lastName)"
}

getFullName()
getFullName("Reyhan", "Al Ikhfan")
