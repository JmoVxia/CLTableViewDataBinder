//
//  UIFont+Extension.swift
//  CKD
//
//  Created by Chen JmoVxia on 2021/11/30.
//  Copyright © 2021 JmoVxia. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    /// PingFang-SC-Bold字体
    static func boldPingFangSC(_ size: CGFloat) -> UIFont {
        return UIFont(name: "HelveticaNeue-Medium", size: size) ?? .boldSystemFont(ofSize: size)
    }

    /// PingFang-SC-Medium字体
    static func mediumPingFangSC(_ size: CGFloat, scale: Bool = true) -> UIFont {
        return UIFont(name: "HelveticaNeue", size: size) ?? .systemFont(ofSize: size)
    }
}
