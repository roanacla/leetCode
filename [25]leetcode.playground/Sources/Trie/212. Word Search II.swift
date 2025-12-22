class Problem_212 {
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        let trie = Trie()
        var board = board
        var results: [String] = []

        var up = (-1,0)
        var down = (1,0)
        var left = (0,1)
        var right = (0,-1)
        
        for word in words {
            trie.insert(word)
        }
        
        for row in 0..<board.count {
            for col in 0..<board[row].count {
                let words = dfs(trie.root.children, row, col, [])
                results += words
            }
        }

        func dfs(_ children: [Character: TrieNode], _ row: Int, _ col: Int, _ word: [Character]) -> [String] {
            guard row >= 0, row < board.count, col >= 0, col < board[row].count, board[row][col] != "#" else { return [] }
            guard let trieNode = children[board[row][col]] else { return [] }
            var word = word
            var results: [String] = []
            let char = board[row][col]
            // print("\(row), \(col)")
            word.append(char)
            // print(word)
            if trieNode.isEnd {
                results.append(trieNode.word!)
                trieNode.isEnd = false
            }
            board[row][col] = "#"
            for direction in [up, left, down, right] {
                let nextRow = row + direction.0
                let nextCol = col + direction.1
                results += dfs(trieNode.children, nextRow, nextCol, word)
            }

            board[row][col] = char
            
            return results
        }

        return results
    }
    class TrieNode {
        var children: [Character: TrieNode] = [:]
        var isEnd: Bool = false
        var word: String? = nil
    }
    
    class Trie {
        let root: TrieNode
        
        init() {
            self.root = TrieNode()
        }
        
        func insert(_ word: String) {
            var current = root
            for char in word {
                if current.children[char] == nil {
                    let trie = TrieNode()
                    current.children[char] = trie
                    current = trie
                } else {
                    current = current.children[char]!
                }
            }
            current.isEnd = true
            current.word = word
        }
    }
}

