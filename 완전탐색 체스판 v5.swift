//
//  main.swift
//  themoon
//
//  Created by 이예직 on 2022/01/20.
//

import Foundation

let NM = readLine()!.split(separator: " ").map{Int(String($0))!}

let m = NM[1] // M 가로
let n = NM[0] // N 세로

var arrs : [[String]] = []

for _ in 0..<n{
    arrs.append(readLine()!.map{String($0)})
}

var result : Int = 1000
for rows in 0..<n-7{
    for col in 0..<m-7{
        var count = 0
        for x in 0..<8{
            for y in 0..<8{
                
                
                if x % 2 == 1{ // 홀수
                    if y % 2 == 1 && arrs[rows+x][col+y] == "B"{ // 홀수
                        count += 1
                    }
                    else if y % 2 == 0 && arrs[rows+x][col+y] == "W"{ // 짝수
                        count += 1
                    }
                }
                
                else{ // x % 2 == 0 짝수
                    if y % 2 == 1 && arrs[rows+x][col+y] == "W"{ // 홀수
                        count += 1
                    }
                    else if y % 2 == 0 && arrs[rows+x][col+y] == "B"{ // 짝수
                        count += 1
                    }
                }
                
                
            }
        }
        
        count = min(count, 64-count)
        result = min(result, count)
    }
}
print(result)

