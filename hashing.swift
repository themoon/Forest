//
//  main.swift
//  themoon
//
//  Created by 이예직 on 2022/01/24.
//

import Foundation

let mod = 1234567891 // 문제에서 제시한 mod hashing Value
readLine()
let input = Array(readLine()!).map{Int(exactly: $0.asciiValue!)! - 96} // a의 asciiValue 는 97임으로 -96을 하여 1로 치환
var hash = 0 // 초기 result Value
var m = 1 // 31 0승
for i in input{
    hash = (hash + i*m) % mod
    m = (m*31) % mod // 31 제곱근을 구하기 위함 31 n승
}
print(hash)
