//
//  844. Backspace String Compare.swift
//  
//
//  Created by Roger Navarro Claros on 9/6/25.
//
public class Problem_844: Runner {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        var sStack = Stack()
        var tStack = Stack()
        
        for character in s {
            character == "#" ? sStack.pop() : sStack.insert(character)
        }
        for character in t {
            character == "#" ? tStack.pop() : tStack.insert(character)
        }
        
        return sStack == tStack
    }
    
    struct Stack: Equatable {
        var array: [Character] = []
        var headIndex = 0
        
        mutating func insert(_ char: Character) {
            array.append(char)
            headIndex += 1
        }
        
        mutating func pop() {
            if let last = array.popLast() {
                headIndex -= 1
            }
        }
    }
    
    public func runCode() {
        print("844. Backspace String Compare")
        let s = "ab#c"
        let t = "ad#c"
        let expected = true
        print("\(backspaceCompare(s, t) == expected ? "Passed" : "Failed")")
    }
}
