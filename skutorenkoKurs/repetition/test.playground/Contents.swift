func factorial(n: Int) -> Int {
    var res = 1
    if n > 0 {
        for i in 1...n {
            res *= i
        }
    }
    else if n == 0 {
        res = 1
    }
    return res
}

let t = factorial(n: -2)

let a: Int? = .zero

struct S {
    let a: Int
    
    init(a: Int = 1) {
        self.a = a
    }
}

let array: [S] = [S(), .init()]

let array2: Int = ([1, nil, 4, 5] as [Int?]).compactMap({ $0 }).map(S.init).reduce(0) { partialResult, val in
    return partialResult + val.a
}

let s: S?


