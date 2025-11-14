class Problem_320: Runner {
    func generateAbbreviations(_ word: String) -> [String] {
        var queue = [word]
        var result: [String] = []
        while !queue.isEmpty {
            var nextLevel: [String] = []
            for abb in queue {
                result.append(merge(abb))
                for i in (0..<abb.count).reversed() {
                    var abbreviation = abb
                    let index = abbreviation.index(abbreviation.startIndex, offsetBy: i)
                    if abbreviation[index] != "1" {
                        abbreviation.replaceSubrange(index...index, with: "1")
                        nextLevel.append(abbreviation)
                    } else {
                        break
                    }
                }
            }
            queue = nextLevel
        }
        return result
    }

    func merge(_ string: String) -> String {
        var result = ""
        for char in string {
            if let last = result.last, last.isNumber, char.isNumber, let number = Int(String(last)) {
                _ = result.popLast()
                result.append(String(number + 1))
            } else {
                result.append(char)
            }
        }

        return result
    }
    
    func runCode() {
        //
    }
}
