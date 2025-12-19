class TrieNode {
    // The node doesn't need to store its own character!
    var children: [Character: TrieNode] = [:]
    var isEndOfWord = false
}

class Trie {
    private let root: TrieNode

    init() {
        root = TrieNode()
    }
    
    func insert(_ word: String) {
        var current = root
        for char in word {
            if current.children[char] == nil {
                let new = TrieNode()
                current.children[char] = new
                current = new
            } else {
                current = current.children[char]!
            }
        }
        current.isEndOfWord = true
    }
    
    func search(_ word: String) -> Bool {
        return findNode(prefix: word)?.isEndOfWord ?? false
    }
    
    func startsWith(_ prefix: String) -> Bool {
        return findNode(prefix: prefix) != nil
    }

    private func findNode(prefix: String) -> TrieNode? {
        var current = root
        for char in prefix {
            if let node = current.children[char] {
                current = node
            } else {
                return nil
            }
        }
        return current
    }
}
