func twoSum(mas: [Int], target: Int) -> [Int] {
    var res : [Int] = []
    for i in 0..<mas.count-1 {
        if mas[i] + mas[i+1] == target {
            res.append(i)
            res.append(i+1)        }
    }
    return res
}

(twoSum(mas: [1,2,3,4], target: 5)

