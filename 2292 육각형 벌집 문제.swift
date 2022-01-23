//
//  main.swift
//  themoon
//
//  Created by 이예직 on 2022/01/23.
//

import Foundation

let n = Int(readLine()!)!
var count = 1
var arr : [Int] = [1]

while true{
    let newValue = 6 * count + arr[count - 1] // count - 1 같은 구현센스 같은 것 봐두기
    if n >= arr[count - 1] && n <= newValue{
        // n >= arr[count - 1]은 내가 지금 어떤 육각형 범위 (1..n) 범위부터 시작됬던 것인지 알려줌
        // n <= newValue 는 내가 어디까지 범위인가 알려줌
        break
    }
    arr.append(newValue) // 범위기록
    count += 1
}

n == 1 ? print(1) : print(count + 1) // + 1 해주는 이유는 첫번쨰 육각형(1) 부터 시작하기 떄문
