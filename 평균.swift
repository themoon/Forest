//
//  main.swift
//  BOJ themoon nim
//
//  Created by 이예직 on 2022/01/04.
//

let n = Double(readLine()!)!

let line = readLine()!
var lineArr = line.split(separator: " ").map{Double(String($0))!}
var max : Double = 0

for i in lineArr{
    if i > max{
        max = i
    }
}

for i in 0...lineArr.count-1{
    lineArr[i] = lineArr[i]/max*100
}


var sum : Double = 0
for i in lineArr{
    sum += i
}

print(sum/n)
