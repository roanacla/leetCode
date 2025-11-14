//
//  13. Roman to integer.swift
//  
//
public class Problem_13: Runner {
    func romanToInt(_ s: String) -> Int {
        let romanDict = ["I": 1,
                         "V": 5,
                         "X": 10,
                         "L": 50,
                         "C": 100,
                         "D": 500,
                         "M": 1000
        ]
        
        guard !s.isEmpty else { return 0}
        if s.count == 1 {
            return romanDict[s]!
        }
        var sum = 0
        var nums: [Int] = []
        for character in s {
            nums.append(romanDict[String(character)]!)
        }
        
        var leftIndex = 0
        var rightIndex = 1
        
        while leftIndex < nums.count - 1 {
            if nums[leftIndex] >= nums[rightIndex] {
                sum += nums[leftIndex]
                leftIndex += 1
                rightIndex += 1
            } else if nums[leftIndex] < nums[rightIndex] {
                sum += nums[rightIndex] - nums[leftIndex]
                leftIndex += 2
                rightIndex += 2
            }
        }
        
        if leftIndex == nums.count - 1 {
            sum += nums[leftIndex]
        }
        
        return sum
    }
    
    public func runCode() {
        print("13. Roman to Integer")
        let s = "MCMXCIV"
        print("\(romanToInt(s) == 1994 ? "Passed" : "Failed")")
    }
}
