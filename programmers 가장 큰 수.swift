//
//  main.swift
//  themoon
//
//  Created by 이예직 on 2022/01/24.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    let result = numbers.map({ String($0) }).sorted(by: {$0 + $1 > $1 + $0})
    // 정수가 아무리 많더라도 각 자리 마다를 계산하여 비교하였음 6, 10, 2 일경우 숫자는 총 4개 6, 1, 0, 2 임으로 이 정수들을 내림차순 하면 됨. result : 6210
    
    if result[0] == "0" {
        return "0"
    }
    return result.joined()
}

solution([6, 10, 2])
