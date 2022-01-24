//
//  main.swift
//  themoon
//
//  Created by 이예직 on 2022/01/24.
//
func solution(_ answers:[Int]) -> [Int] {
    // 학생들의 패턴 배열 생성
    let arr1 = [1,2,3,4,5]
    let arr2 = [2,1,2,3,2,4,2,5]
    let arr3 = [3,3,1,1,2,2,4,4,5,5]
    
    // 학생의 번호와 정답 수를 관리하기 위한 key, value 형태의 Dictionary
    var dic: [Int: Int] = [:]
    
    // 각 학생들의 패턴과 최종 정답과 패턴의 수를 각 패턴의 수만큼 고려하여 하나씩 비교
    for i in 0..<answers.count {
        // 정답과 패턴의 수가 같을 경우 해당 학생 Dictionary의 value 값을 1 증가
        if answers[i] == arr1[i%arr1.count] { dic[1] = (dic[1] ?? 0) + 1 }
        if answers[i] == arr2[i%arr2.count] { dic[2] = (dic[2] ?? 0) + 1 }
        if answers[i] == arr3[i%arr3.count] { dic[3] = (dic[3] ?? 0) + 1 }
    }
    
    // 모든 학생들의 Dictionary의 최대 값을 가져옴
    let max = dic.values.max()!
    
    // max값과 같은 값을 가지는 객체들만 추려서(필터링) 가져옴(filter)
    // 여러 개일 경우를 고려하여 오름차순 정렬을 실행
    let result = dic.filter { $0.value == max }.keys.sorted()

    return result
}
