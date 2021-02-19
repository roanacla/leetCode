//
//  ViewController.swift
//  RemoveDuplicatesFromSortedArray
//
//  Created by Roger Navarro on 12/26/20.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var index = 1
    var lastVisited: Int = nums[0]
    while index < nums.count {
      if lastVisited == nums[index] {
        nums.remove(at: index)
      } else {
        lastVisited = nums[index]
        index += 1
      }
    }
    
    return nums.count
  }

}

