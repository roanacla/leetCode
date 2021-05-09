struct _57__Read_N_Characters_Given_Read4 {
    var text = "Hello, World!"
}

/**
 * The read4 API is defined in the parent class Reader4.
 *     func read4(_ buf4: inout [Character]) -> Int;
 */

class Solution : Reader4 { // Its ok for this line to display error
  /**
     * @param buf Destination buffer
     * @param n   Number of characters to read
     * @return    The number of actual characters read
     */
    
    
    func read(_ buf: inout [Character], _ n: Int) -> Int {
        var result: [Character] = []
        var total = 0
        while result.count < n {
            let count = read4(&buf) // Its ok for this line to display error
            if count == 0 { break }
            result += buf[0..<count]
            total += count
            
        }
        total = min(total, n)
        buf = Array(result[0..<total])
        return total
    }
}
