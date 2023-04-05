import Foundation

let myName = "Vicky"
let myAge = 22
let yourName = "Reyhan"
let yourAge = 21


if myName == "vicky"{
    "Your name is \(myName)"
}else{
    "I guess wrong"
}


if myName == "Vicky"{
    "I guess correct now"
}else if(myName == "Reyhan"){
    "Ur name is \(myName)"
}else{
    "I try my best, i gave up"
}

if myName == "Vicky" && myAge == 22{
    "Yoru name is \(myName) and your age is \(myAge)"
}else if myAge == 22{
    "I only guest ur age correctly"
}else{
    "opps i think i wrong"
}


if (myName == "Vicky" && myAge == 21) || (yourAge == 21 || yourName == "Reyhan"){
    "yeayyy is correct"
}else{
    "Something wrong maybe"
}
