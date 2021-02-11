func minimumStepsToOne(num: Int) -> Int {
  var counter = 0
  minimumStepsToOne(num: num, counter: &counter)
  return counter
}

func minimumStepsToOne(num: Int, counter: inout Int){
  if num == 1 {
    return
  } else {
    counter = counter + 1
    if num % 3 == 0 {
      minimumStepsToOne(num: num / 3, counter: &counter)
    } else if (num - 1) % 3 == 0 {
      counter = counter + 1
      minimumStepsToOne(num: (num - 1) / 3, counter: &counter)
    } else if num % 2 == 0 {
      minimumStepsToOne(num: num / 2, counter: &counter)
    } else {
      minimumStepsToOne(num: num - 1, counter: &counter)
    }
  }
}
