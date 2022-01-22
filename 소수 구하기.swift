let getMN = readLine()!.split(separator: " ").map{Int($0)! }
let M = getMN[0]
let N = getMN[1]

var arr: [Int] = Array(repeating: 0, count: N+1)
for i in 2...N {
    arr[i] = i
}

for i in arr{
    if arr[i] == 0 {continue}
  for k in stride(from: i + i, through: N, by: i) {
    arr[k] = 0
       }
}

for i in M...N{
    if arr[i] > 0{
      print(arr[i])
    }
}
