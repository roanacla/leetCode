
//
//  744> Find Smallest Letter Greater Than Target.swift
//  
//
//  Created by Roger Navarro Claros on 9/10/25.
//

public class Problem_744: Runner {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        //binary search
        var leftEdge = 0
        var rightEdge = letters.count - 1
        var character = letters[0]
        while leftEdge <= rightEdge {
            let midIndex = leftEdge + (rightEdge - leftEdge) / 2
            character = letters[midIndex]
            if character == target {
                return letters[leftEdge..<letters.count].first(where: {character < $0}) ?? letters[0]
            } else if character < target {
                leftEdge = midIndex + 1
            } else {
                rightEdge = midIndex - 1
            }
        }

        return letters[leftEdge..<letters.count].first(where: {character <= $0}) ?? letters[0]
    }
    
    func nextGreatestLetterTwo(_ letters: [Character], _ target: Character) -> Character {
        var midIndex = letters.count / 2
        var rightEdge = letters.count - 1
        var leftEdge = 0
        
        while leftEdge <= rightEdge {
            if letters[midIndex] == target {
                return letters[leftEdge..<letters.count].first(where: {target < $0}) ?? letters[0]
            } else if letters[midIndex] < target {
                leftEdge = midIndex + 1
            } else if letters[midIndex] > target {
                rightEdge = midIndex - 1
            }
            midIndex = leftEdge + ((rightEdge - leftEdge) / 2)
        }
        
        return letters[leftEdge..<letters.count].first(where: {target <= $0}) ?? letters[0]
    }
    
    func nextGreatestLetterThree(_ letters: [Character], _ target: Character) -> Character {
            var midIndex = letters.count / 2
            var rightEdge = letters.count - 1
            var leftEdge = 0

            while leftEdge <= rightEdge {
                if letters[midIndex] <= target {
                    leftEdge = midIndex + 1
                } else if letters[midIndex] > target {
                    rightEdge = midIndex - 1
                }
                midIndex = leftEdge + ((rightEdge - leftEdge) / 2)
            }

            return (0..<letters.count).contains(midIndex) ? letters[midIndex] : letters[0]
        }
    
    public func runCode() {
        print("744. Find Smallest Letter Greater than Target")
        
        let letters1: [Character] = ["c","f","j"]
        let target1: Character = "a"
        print("\(nextGreatestLetter(letters1, target1) == "c" ? "Passed" : "Failed")")
        
        let letters2: [Character] = ["c","f","j"]
        let target2: Character = "c"
        print("\(nextGreatestLetter(letters2, target2) == "f" ? "Passed" : "Failed")")
        
        let letters3: [Character] = ["x","x","y","y"]
        let target3: Character = "z"
        print("\(nextGreatestLetter(letters3, target3) == "x" ? "Passed" : "Failed")")
    }
}
