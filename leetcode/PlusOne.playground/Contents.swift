func plusOne(_ digits: [Int]) -> [Int] {
    var charArray : [Character] = []
    var intDigits : [Int] = []
    var resPlus : Double = 0
    var strPlus = ""
    var str = ""
    for i in digits {
        str += String(i)
    }
    //"1234"

    if var doubleSum = Double(str) {
        doubleSum += 1
        resPlus = doubleSum
    }
    print(resPlus)
    //1235.0

    strPlus = String(resPlus)
    print(strPlus)
    //"1235.0"

    for i in strPlus {
        charArray.append(i)
    }

    charArray.removeLast(2)
    //["1","2","3","5"]

    for i in charArray {
        if let n = Int(String(i)) {
            intDigits.append(n)
        }
    }
    return intDigits
}
