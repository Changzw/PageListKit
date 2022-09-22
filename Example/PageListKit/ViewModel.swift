//
//  ViewModel.swift
//  PageListKit_Example
//
//  Created by Fri on 2022/9/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import PageListKit
import Action
import RxSwift

final class ViewModel: PageListDataLoader {
  typealias T = Array<Int>
  
  var loadData: Action<Void, Array<Int>> = Action<Void, Array<Int>> {
    return .just([])
  }
  
  var data: Observable<Array<Int>> {
    loadData.elements
  }
  
  var isLoading: Observable<Bool> {
    loadData.executing
  }

  
}
