//
//  main.swift
//  BOJ themoon nim
//
//  Created by 이예직 on 2022/01/05.
//

let n = Int(readLine()!)!
var q : [Int] = []
for _ in 0..<n{
    let line = readLine()!.split(separator: " ").map{String($0)}
    if line[0] == "push"{
        q.append(Int(line[1])!)
    } // push
    if line[0] == "pop"{
        if q.count != 0{
            print(q[0])
            q.remove(at:0)
        }else{
            print(-1)
        }
    } // pop
    if line[0] == "size"{
        print(q.count)
    } // size(count)
    if line[0] == "empty"{
        if q.isEmpty{
            print(1)
        }else{
            print(0)
        }
    } // empty 정확하지 않음
    if line[0] == "front"{
        if q.count != 0{
            print(q[0])
        }else{
            print(-1)
        }
    } // front(top)
    if line[0] == "back"{
        if q.count != 0{
            print(q[q.count-1])
        }else{
            print(-1)
        }
    }
}
