//
//  main.swift
//  BOJ themoon nim
//
//  Created by 이예직 on 2022/01/19.
//

import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var result = 0
let line = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 0..<line.count{
    for j in i+1..<line.count{
        for k in j+1..<line.count{
            if line[i] + line[j] + line[k] <= m{
                if line[i] + line[j] + line[k] > result{
                    result = line[i] + line[j] + line[k]
                }
            }
        }
    }
}
print(result)
