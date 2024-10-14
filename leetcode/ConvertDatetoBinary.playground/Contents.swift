func conversionToBits(_ num: inout Int) -> String {
        var str = ""
        var strReverse = ""

        while num > 0 {
            let a = num % 2
            str += String(a)
            num /= 2
        }
    
        for i in str.reversed() {
            strReverse += String(i)
        }
        return strReverse
    }

func convertDateToBinary(_ date: String) -> String {
    var strFinal = ""
    var days = ""
    var month = ""
    var year = ""
    var charArray : [Character] = []
    for i in date {
        charArray.append(i)
    }
    //[2,0,8,0,-,0,2,-,2,9]
    var charDays2 = ""
    if let l = charArray.last {
        charArray.remove(at: charArray.endIndex - 1)
        charDays2 = String(l)
    }
    //[2,0,8,0,-,0,2,-,2]
    var charDays1 = ""
    if let l = charArray.last {
        charArray.remove(at: charArray.endIndex - 1)
        charDays1 = String(l)
    }
    //[2,0,8,0,-,0,2,-]

    days += charDays1 + charDays2
    //"09"
    charArray.remove(at: charArray.endIndex - 1)
    //[2,0,8,0,-,0,2]

    var charMonth2 = ""
    if let l = charArray.last {
        charArray.remove(at: charArray.endIndex - 1)
        charMonth2 = String(l)
    }
    //[2,0,8,0,-,0]
    var charMonth1 = ""
    if let l = charArray.last {
        charArray.remove(at: charArray.endIndex - 1)
        charMonth1 = String(l)
    }
    //[2,0,8,0,-,]
    month += charMonth1 + charMonth2
    //"02"
    charArray.remove(at: charArray.endIndex - 1)
    //[2,0,8,0]

    for i in charArray {
        year += String(i)
    }
    //"2080"

    if var a = Int(year) {
        let c = conversionToBits(&a)
        strFinal += c + "-"
    }

    if var a = Int(month) {
        let c = conversionToBits(&a)
        strFinal += c + "-"
    }

    if var a = Int(days) {
        let c = conversionToBits(&a)
        strFinal += c
    }

    return strFinal
}
