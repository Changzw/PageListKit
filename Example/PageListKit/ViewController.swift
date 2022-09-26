//
//  ViewController.swift
//  PageListKit
//
//  Created by czw on 09/09/2022.
//  Copyright (c) 2022 czw. All rights reserved.
//

import UIKit
import SnapKit
import RxCocoa
import RxSwift

final class ViewController: UIViewController {
  let tableView = UITableView()
  let viewModel: ViewModel
  let bag = DisposeBag()
  
  init(viewModel: ViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.description())
    tableView.rowHeight = UITableViewAutomaticDimension
    
    view.backgroundColor = .cyan
    view.addSubview(tableView)
    tableView.snp.makeConstraints{
      $0.edges.equalToSuperview()
    }
    
    viewModel.data
      .bind(to: tableView.rx.items(cellIdentifier:  UITableViewCell.description(), cellType: UITableViewCell.self)) { (row, element, cell) in
        cell.textLabel?.text = "\(row)-\(element)"
      }
      .disposed(by: bag)
  }
}

