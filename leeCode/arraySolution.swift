//
//  ArraySolution.swift
//  leeCode
//
//  Created by Selina on 2019/8/27.
//  Copyright © 2019 Selina. All rights reserved.
//

import Foundation

class arraySolution: NSObject {
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var cIdx = 0
        for idx in 0 ..< nums.count {
            if nums[idx] != val {
                nums[cIdx] = nums[idx]
                cIdx += 1
            }
        }
        return cIdx
    }
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var flag = nums.count - 1
        while flag > 0 {
            for idx in 0..<nums.count {
                if nums[flag] == nums[idx] {
                    nums.remove(at: idx)
                }
            }
            flag -= nums.count - 1
        }
        print(nums)
        return nums.count
    }
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
    }
}
