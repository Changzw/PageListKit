//
//  Mock.swift
//  PageListKit_Example
//
//  Created by Fri. on 2022/9/23.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

func randomNumber(count: Int) -> [Int] {
  var res = [Int]()
  res.reserveCapacity(count)
  (0..<count).map { _ in
    Int.random(in: 0...10000)
  }
  .forEach{
    res.append($0)
  }
  return res
}
