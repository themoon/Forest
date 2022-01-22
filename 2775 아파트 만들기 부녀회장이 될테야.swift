//
//  main.swift
//  themoon
//
//  Created by 이예직 on 2022/01/20.
//

import Foundation

let t = Int(readLine()!)!
var building = Array(repeating: Array(repeating: 0, count: 14), count: 15)
// 아파트에는 0층부터 14층 까지 있음으로 총 15층이며, 1호부터 14호 까지 있음으로 0호부터 13호로 치환한다 생각하여 배열 미리 생성

for i in 1...14{
    building[0][i-1] = i
}

for i in 0..<15{
    building[i][0] = 1
}

for i in 1...14{ // 2층 부터 14층까지
    for j in 1...13{ // 1호부터 13호까지
        building[i][j] = building[i-1][j] + building[i][j-1]
        // [자기아래층(-1)][자기자신과(j)][자기층의(i)][전호실(-1)]
    }
}

//for i in Array(0...14).reversed(){
//    print(building[i], i)
//}
//
//print("구분선")

for _ in 1...t{
    let (k, n) = (Int(readLine()!)!, Int(readLine()!)!)
    print(building[k][n-1])
}
