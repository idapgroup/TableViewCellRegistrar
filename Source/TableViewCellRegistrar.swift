//
//  UITableViewCellRegistrar.swift
//  TableViewCellRegistrar
//
//  Created by IDAP Developer on 06.07.2023.
//  Copyright © 2019 IDAP. All rights reserved.
//

import UIKit

func toString(_ cls: AnyClass) -> String {
    return String(describing: cls)
}

extension UITableView {
    
    @discardableResult
    public func dequeueReusableCell<Result>(withCellClass cellClass: Result.Type, for indexPath: IndexPath) -> Result
        where Result: UITableViewCell
    {
        let cell = self.dequeueReusableCell(withIdentifier: toString(cellClass), for: indexPath)
        
        guard let value = cell as? Result else {
            fatalError("Can't find identifier")
        }
        
        return value
    }
    
    func register(cells: Set<String>, cls: Array<AnyClass>) {
        zip(cells, cls).forEach { type in
            self.register(cell: type.0, cls: type.1)
        }
    }
    
    public func register(cells: UITableViewCell.Type...) {
        let array = cells.map { toString($0) }
        self.register(cells: Set(array), cls: cells.map { $0 })
    }
    
    public func register(cellClass: UITableViewCell.Type) {
        self.register(cell: toString(cellClass), cls: cellClass)
    }
    
    func register(cell: String, cls: AnyClass) {
        let bundle = Bundle(for: cls)
        
        let nib = UINib.init(nibName: cell, bundle: bundle)
        self.register(nib, forCellReuseIdentifier: cell)
    }
    
    func register(headerFooters: [String]) {
        headerFooters.forEach { type in
            self.register(headerFooter:type)
        }
    }
    
    func register(headerFooter: String) {
        let nib = UINib.init(nibName: headerFooter, bundle: nil)
        self.register(nib, forHeaderFooterViewReuseIdentifier: headerFooter)
    }
    
    func register(headerFooterClass: AnyClass) {
        self.register(headerFooter: toString(headerFooterClass))
    }
    
    func register(_ cellClass: AnyClass) {
        let nib = UINib(nibName: toString(cellClass), bundle: nil)
        self.register(nib, forCellReuseIdentifier: toString(cellClass))
    }
    
    public func hasRowAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return indexPath.section < self.numberOfSections && indexPath.row < self.numberOfRows(inSection: indexPath.section)
    }
}

extension UITableViewCell {
    
    static var nib: UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
