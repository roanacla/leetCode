struct _80__Valid_Palindrome_II {
    var text = "Hello, World!"
}

func validPalindrome(_ s: String) -> Bool {
    var array = Array(s)
    return helper(array, 0, array.count - 1, 1)
}

func helper(_ array: [Character], _ i: Int, _ j: Int, _ attempts: Int) -> Bool {
    if i == j && attempts == 1 {
        return true
    }
    if i > j && attempts >= 0 {
        return true
    }
    if i + 1 == j && attempts == 1 && array[i] != array[j] {
        return true
    }
    
    if array[i] == array[j] {
        return helper(array, i + 1, j - 1, attempts)
    } else if array[i + 1] == array[j] && attempts == 1 {
        if !helper(array, i + 2, j - 1, attempts - 1) {
            return helper(array, i + 1, j - 2, attempts - 1)
        } else {
            return true
        }
    } else if array[i] == array[j - 1] && attempts == 1 {
        if !helper(array, i + 1, j - 2, attempts - 1) {
            return helper(array, i + 2, j - 1, attempts - 1)
        } else { return true }
    }
    return false
    
}
