//
//  CLRowItemProtocol.swift
//  CLTableViewDataBinder
//
//  Created by JmoVxia on 2025/10/16.
//

import UIKit

/// 表示一个 TableView 的行模型协议（Row Item）
public protocol CLRowItemProtocol: CLDataSourceItemProtocol {
    // MARK: - 生命周期回调

    /// 将要显示 Cell 时调用，对应 UITableViewDelegate:
    /// `tableView(_:willDisplay:forRowAt:)`
    var willDisplay: ((IndexPath) -> Void)? { get set }

    /// Cell 显示结束时调用，对应 UITableViewDelegate:
    /// `tableView(_:didEndDisplaying:forRowAt:)`
    var didEndDisplaying: ((IndexPath) -> Void)? { get set }

    /// 提供或配置 Cell 的回调，对应 UITableViewDataSource:
    /// `tableView(_:cellForRowAt:)`
    var cellForRow: ((IndexPath) -> Void)? { get set }

    /// 点击 Cell 时调用，对应 UITableViewDelegate:
    /// `tableView(_:didSelectRowAt:)`
    var didSelect: ((IndexPath) -> Void)? { get set }

    // MARK: - 基本信息

    /// Cell 类型（用于注册与复用）
    var cellType: UITableViewCell.Type { get }

    /// Cell 高度（默认 `UITableView.automaticDimension`）
    var cellHeight: CGFloat { get }
}

// MARK: - 默认实现

public extension CLRowItemProtocol {
    var willDisplay: ((IndexPath) -> Void)? {
        get { nil }
        set {}
    }

    var didEndDisplaying: ((IndexPath) -> Void)? {
        get { nil }
        set {}
    }

    var cellForRow: ((IndexPath) -> Void)? {
        get { nil }
        set {}
    }

    var didSelect: ((IndexPath) -> Void)? {
        get { nil }
        set {}
    }

    var cellHeight: CGFloat {
        UITableView.automaticDimension
    }
}
