//
//  CLRowCellProtocol.swift
//  CLTableViewDataBinder
//
//  Created by JmoVxia on 2025/10/16.
//

import UIKit

public protocol CLRowCellBaseProtocol {
    func set(item: CLRowItemProtocol, indexPath: IndexPath)
}

public protocol CLRowCellProtocol: CLRowCellBaseProtocol where Self: UITableViewCell {
    associatedtype T: CLRowItemProtocol
    var item: T? { get set }
    func setItem(_ item: T, indexPath: IndexPath)
}

public extension CLRowCellProtocol {
    func set(item: CLRowItemProtocol, indexPath: IndexPath) {
        guard let item = item as? Self.T else { return }
        self.item = item
        setItem(item, indexPath: indexPath)
    }
}
