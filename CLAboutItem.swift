//
//  CLAboutItem.swift
//  CLTableViewManger
//
//  Created by JmoVxia on 2025/10/16.
//
import UIKit

class CLAboutItem: NSObject {
    var title: String = ""
    var subtitle: String = ""
    var url: String = ""
}
extension CLAboutItem: CLRowItemProtocol {
    var cellType: UITableViewCell.Type {
        CLAboutCell.self
    }
}
