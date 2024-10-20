let x = ["a", "b", "c", "d", "e", "f", "g", "h"]
let y = [1, 2, 3, 4, 5 , 6, 7, 8]
var dict = [String: Bool]()
for (index, i) in x.enumerated() {
    for e in y {
        if (index + e) % 2 == 0 {
            let res = true
            dict["\(i)\(e)"] = res
        }
        else {
            let res = false
            dict["\(i)\(e)"] = res
        }
    }
}
var num = 0
for (key, value) in dict {
    num += 1
    print("\(num) - \(key)(\(value))")
}




