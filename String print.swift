//
//  mail.swift
//  BOJ themoon nim
//
//  Created by 이예직 on 2022/01/04.
//
import Foundation
let n = Int(readLine()!)!

var result : [String] = []

for i in 1...n{
    let line = readLine()!
    let lineArr = line.components(separatedBy: " ")
    let a = Int(lineArr[0])!
    let b = Int(lineArr[1])!
    let sum = a + b
    result.append("Case #\(i): \(lineArr[0]) + \(lineArr[1]) = \(sum)")
}

for i in result{
    print(i)
}
