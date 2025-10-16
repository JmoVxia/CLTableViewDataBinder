//
//  CLSectionHeaderFooterProtocol.swift
//  CLTableViewDataBinder
//
//  Created by JmoVxia on 2025/10/16.
//

import UIKit

public protocol CLSectionHeaderFooterBaseProtocol {
    func set(item: CLSectionItemProtocol, section: Int)
}

public protocol CLSectionHeaderFooterProtocol: CLSectionHeaderFooterBaseProtocol where Self: UITableViewHeaderFooterView {
    associatedtype T: CLSectionItemProtocol
    var item: T? { get set }
    func setItem(_ item: T, section: Int)
}

public extension CLSectionHeaderFooterProtocol {
    func set(item: CLSectionItemProtocol, section: Int) {
        guard let item = item as? Self.T else { return }
        self.item = item
        setItem(item, section: section)
    }
}
