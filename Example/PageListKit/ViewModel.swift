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
  private(set) var offset: Int = 0
  
  let pageSize: Int = 30
  
  private(set) var hasMore: Bool = true
  
  var loadData: Action<Void, Array<Int>> = Action<Void, Array<Int>> {
    .just(randomNumber(count: 20))
  }
  
  var loadMore: Action<Void, Array<Int>> = Action<Void, Array<Int>> {
    .just(randomNumber(count: 20))
  }
  
  var data: Observable<Array<Int>> {
    loadData.elements
  }
  
  var isLoading: Observable<Bool> {
    loadData.executing
  }

  
}

