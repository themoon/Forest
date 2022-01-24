//
//  main.swift
//  themoon
//
//  Created by 이예직 on 2022/01/24.
//

let n = Int(readLine()!)!

var weigthList = [[Int]]() // 2차원 배열로 만듬
var result = [Int]()

for _ in 0..<n{
    weigthList.append(readLine()!.split(separator: " ").map{Int(String($0))!}) // 2차 배열에 Add
}

for i in 0..<n{
    var rank = 1
    for j in 0..<n{
        if weigthList[i][0] < weigthList[j][0] && weigthList[i][1] < weigthList[j][1]{ // i와 j를 이용하여 완전 탐색 할 수 있음 둘다 같은 조건 "<"을 만족할 시에만 자기 위에 있다고 생각하고 해결
            rank += 1
        }
    }
    print(rank, terminator: " ")
}
