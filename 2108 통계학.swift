//
//  main.swift
//  themoon
//
//  Created by 이예직 on 2022/01/25.
//

import Foundation

let n = Int(readLine()!)!

var list = [Int]() // N개의 정수를 받을 배열 선언
for _ in 1...n{
    list.append(Int(readLine()!)!)
}
// 산술 평균
if n == 1{
    print(list[0])
}else{
    var sum = 0
    for i in list{
        sum += i
    }
    let rounding : Double = Double(sum) / Double(n)
    print(Int(round(rounding)))

    
}

// 중앙값
if n == 1{
    print(list[0])
}else{
    print(list.sorted()[n / 2])
}

// 최빈값
if n == 1{
    print(list[0])
}else{
    var dictMin : [Int:Int] = [:]
    for i in list{
        if dictMin[i] != nil{
            dictMin[i]! += 1
        }else{
            dictMin[i] = 1
        }
    }
    var maxarr : [Int] = []
    var result : [Int] = []
    var maxkey = -999
    var maxValues = -999
    for i in dictMin{
        if i.value > maxkey{
            maxkey = i.value
            maxValues = i.key
        }
    }
    maxarr.append(maxValues) // 맥스값부터 추가
    for i in dictMin{
        if dictMin[maxValues] == i.value{
            result.append(i.key)
        }
    }
    if result.count == 1{
        print(result[0])
    }else{
        result.sort()
        print(result[1])
    }
}

//범위

if n == 1{
    print(0)
}else{
    print(list.max()! - list.min()!)
}

