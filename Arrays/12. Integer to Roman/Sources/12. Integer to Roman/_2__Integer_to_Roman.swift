struct _2__Integer_to_Roman {
    var text = "Hello, World!"
}

func intToRoman(_ num: Int) -> String {
      // dictionary
      let numbers: [Int] = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
      let romanNums: [Int:String] = [1000:"M",
                                     900:"CM",
                                     500:"D",
                                     400:"CD",
                                     100:"C",
                                     90:"XC",
                                     50:"L",
                                     40:"XL",
                                     10:"X",
                                     9:"IX",
                                     5:"V",
                                     4:"IV",
                                     1:"I"]

      var num = num
      var result = ""
      var i = 0
      while num > 0 {
        while i < numbers.count {
          let number = numbers[i]
          if number <= num {
            result += romanNums[number]!
            num -= number
            break
          }
          i += 1
        }
      }
      return result
    }
