import XCTest
@testable import FindMedianSortedArrays

final class FindMedianSortedArraysTests: XCTestCase {
    func testExample() {
      var nums1 = [1,2,3,4,5,6]//[Int]()//[2]//[Int]()//[0,0]//[1,2]//[1,3]
      var nums2 = [7]//[Int]()//[Int]()//[1]//[0,0]//[3,4]//[2]
      XCTAssertEqual(findMedianSortedArrays(nums1, nums2), 4.0)
      nums1 = [Int]()//[2]//[Int]()//[0,0]//[1,2]//[1,3]
      nums2 = [Int]()//[Int]()//[1]//[0,0]//[3,4]//[2]
      XCTAssertEqual(findMedianSortedArrays(nums1, nums2), 0.0)
      nums1 = [2]//[Int]()//[0,0]//[1,2]//[1,3]
      nums2 = [Int]()//[1]//[0,0]//[3,4]//[2]
      XCTAssertEqual(findMedianSortedArrays(nums1, nums2), 2.0)
      nums1 = [Int]()//[0,0]//[1,2]//[1,3]
      nums2 = [1]//[0,0]//[3,4]//[2]
      XCTAssertEqual(findMedianSortedArrays(nums1, nums2), 1.0)
      nums1 = [0,0]//[1,2]//[1,3]
      nums2 = [0,0]//[3,4]//[2]
      XCTAssertEqual(findMedianSortedArrays(nums1, nums2), 0.0)
      nums1 = [1,2]//[1,3]
      nums2 = [3,4]//[2]
      XCTAssertEqual(findMedianSortedArrays(nums1, nums2), 2.5)
      nums1 = [1,3]
      nums2 = [2]
      XCTAssertEqual(findMedianSortedArrays(nums1, nums2), 2.0)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
