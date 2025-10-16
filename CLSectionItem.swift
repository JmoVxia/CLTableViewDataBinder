//
//  CLSectionHeadItem.swift
//  CLTableViewManger
//
//  Created by JmoVxia on 2025/10/16.
//

import UIKit

class CLSectionItem: NSObject {
    var contentInsets = UIEdgeInsets.zero
    var headTitle = NSMutableAttributedString()
    var footerTitle = NSMutableAttributedString()
    var isSelected = false
    var right: (nomal: NSMutableAttributedString, seleted: NSMutableAttributedString)?
}

extension CLSectionItem: CLSectionItemProtocol {
    var headerViewType: UITableViewHeaderFooterView.Type? {
        CLSectionHeadView.self
    }
    
    var footerViewType: UITableViewHeaderFooterView.Type? {
        CLSectionFooterView.self
    }
}
