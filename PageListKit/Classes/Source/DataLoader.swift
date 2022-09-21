//
//  DataLoader.swift
//  PageListKit
//
//  Created by Fri. on 2022/9/22.
//

import Action
import RxSwift

protocol DataLoader {
  associatedtype T
  var loadData: Action<Void, T> { get }
  var data: Observable<T> { get }
  var isLoading: Observable<Bool> {get}
}

protocol Pageable {
  var offset: Int { get }
  var pageSize: Int { get }
  var hasMore: Bool { get }
}

//MARK: -
protocol PageListDataLoader: DataLoader where T: Collection {
  
}
