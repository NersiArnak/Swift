//Array(repeating: 8, count: 8)
var board = Array(repeating: Array(repeating: 0, count: 8), count: 8)

func printBoard(mas: [[Int]]) {
    board.forEach({print($0)})
}
printBoard(mas: board)

func change(board: inout [[Int]]) {
    for (i, row) in board.enumerated() {
        for (j, element) in row.enumerated() {
            if i%2 == 0, j%2 == 0 {
                board[i][j] = 1
            }
        }
    }
}
change(board: &board)
print("\n")
printBoard(mas: board)
