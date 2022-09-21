//
//  ListDataService.swift
//  Pods
//
//  Created by Fri on 2022/9/9.
//

import Foundation
import RxSwift

enum ResponseDataResult {
  // items 可以放在 case 里面
  case none,
       empty,
       error(Error),
       normal,
       noMore
}

protocol DataLoadingService {
  var loading: Observable<Bool> { get }
}

protocol DataLoadService {
  associatedtype Result
  
  var stateObservable: Observable<ResponseDataResult> { get }
  var currentState: ResponseDataResult { get }
}

extension DataLoadService where Result: Collection {
  var isEmpty: Bool {
    
  }
}
