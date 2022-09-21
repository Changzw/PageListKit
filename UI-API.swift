//
//  UI.swift
//  PageListKit
//
//  Created by Fri. on 2022/9/22.
//

import Foundation

protocol PageListView {
  associatedtype ContentView: UIScrollView
  var listView: ContentView { get }
  
  var emptyView: UIView { get }
  var errorView: UIView { get }
}

protocol Toastable {
  /// - Returns: token
  func show(message: String) -> String
  
  func hide(token: String)
}
