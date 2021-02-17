func fib(_ n: Int) -> Int {
  if n == 0 { return 0 }
  var fibonacci = [Int](repeating: 0, count: n + 1)
  fibonacci[0] = 0
  fibonacci[1] = 1
  
  if n >= 2 {
    for i in 2...n {
      fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2]
    }
  }
  
  return fibonacci.last ?? 0
}
