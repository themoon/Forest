//
//  main.swift
//  BOJ themoon nim
//
//  Created by 이예직 on 2022/01/19.
//

import Foundation

let N = Int(readLine()!)!
let N_line = readLine()!.split(separator: " ").map{Int(String($0))!}

let M = Int(readLine()!)!
let M_line = readLine()!.split(separator: " ").map{Int(String($0))!}

var count : [Int:Int] = [:]
var result : [Int] = []

for i in N_line{
    if count.keys.contains(i)
    {
        count[i]! += 1
    }else
    {
        count[i] = 1
    }
}


for i in M_line{
    if count.keys.contains(i)
    {
        result.append(count[i]!)
    }else
    {
        result.append(0)
    }
}


var answer = ""
for i in result{
    answer.append(String(i) + " ")
}

print(answer)
