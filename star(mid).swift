//
//  main.swift
//  BOJ themoon nim
//
//  Created by 이예직 on 2022/01/14.
//
var line = readLine()
var res = ""
var j = 1

if let a:Int = Int(line!){
    for i in 1...a{
        res = ""
        for _ in 0..<a-i{
            res += " "
        }
        for _ in 1...(i*2)-1{
            res += "*"
        }
        print(res)
    }
}
