func fromStrToInt(str: Character) -> Int {
    let alphabet = "abcdefgh"
    var numStr = 0
    for (index, i) in alphabet.enumerated() {
        if (i == str) {
            numStr = index+1
        }
    }
    return numStr
}

func sumCoordinate(coordinate1: String) -> Int {
    var asisNum : Character = "-"
    var realNum = "-"
    var sum = 0
    for i in coordinate1 {
        if i == "a" || i == "b" || i == "c" || i == "d" || i == "e" || i == "f" || i == "g" || i == "h" {
            asisNum = i
        }
        else if i == "1" || i == "2" || i == "3" || i == "4" || i == "5" || i == "6" || i == "7" || i == "8" {
            realNum = String(i)
        }
        else {
            print("not correct coordinate")
            break
        }
    }
    let saveStr = fromStrToInt(str: asisNum)
    
    if let intNum = Int(realNum) {
        sum = saveStr + intNum
    }
    return sum
}


func checkTwoChessboards(_ coordinate1: String, _ coordinate2: String) -> Bool {
    let sum1 = sumCoordinate(coordinate1: coordinate1)
    let sum2 = sumCoordinate(coordinate1: coordinate2)
    if (sum1 % 2 == 0 && sum2 % 2 == 0) || (sum1 % 2 == 1 && sum2 % 2 == 1) {
        return true
    }
    else {
        return false
    }
}

checkTwoChessboards("g1", "e6")


