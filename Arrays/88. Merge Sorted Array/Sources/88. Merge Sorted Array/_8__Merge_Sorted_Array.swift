struct _8__Merge_Sorted_Array {
    var text = "Hello, World!"
}


class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var a = m - 1
        var c = n - 1
        
        for b in (0..<(m + n)).reversed() {
            if c < 0 { break }
            if a >= 0 && nums1[a] > nums2[c] {
                nums1[b] = nums1[a]
                a -= 1
            } else {
                nums1[b] = nums2[c]
                c -= 1
            }
        }
    }
}
