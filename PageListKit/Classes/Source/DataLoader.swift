//
//  DataLoader.swift
//  PageListKit
//
//  Created by Fri. on 2022/9/22.
//

import Action
import RxSwift

public
protocol DataLoader {
  associatedtype T
  var loadData: Action<Void, T> { get }
  var data: Observable<T> { get }
  var isLoading: Observable<Bool> {get}
}

public
protocol LoaderPageable {
  associatedtype T: Collection
  var loadMore: Action<Void, T> { get }
  var offset: Int { get }
  var pageSize: Int { get }
  var hasMore: Bool { get }
}

//MARK: -
public
protocol ListDataLoader: DataLoader where T: Collection {
  
}

public
protocol PageListDataLoader: DataLoader&LoaderPageable where T: Collection {
  
}
