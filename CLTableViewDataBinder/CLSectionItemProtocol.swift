//
//  CLSectionItemProtocol.swift
//  CLTableViewDataBinder
//
//  Created by JmoVxia on 2025/10/16.
//

import UIKit

/// 表示一个 TableView 的分区模型协议（Section Item）
public protocol CLSectionItemProtocol: CLDataSourceItemProtocol {
    // MARK: - Rows

    /// 当前分区下的所有行模型
    var rows: [CLRowItemProtocol] { get set }

    // MARK: - Header

    /// Header 将要显示时回调，对应 UITableViewDelegate:
    /// `tableView(_:willDisplayHeaderView:forSection:)`
    var willDisplayHeader: ((Int) -> Void)? { get set }

    /// Header 显示结束时回调，对应 UITableViewDelegate:
    /// `tableView(_:didEndDisplayingHeaderView:forSection:)`
    var didEndDisplayingHeader: ((Int) -> Void)? { get set }

    /// 提供或配置 Header 视图的回调，对应 UITableViewDataSource:
    /// `tableView(_:viewForHeaderInSection:)`
    var viewForHeader: ((Int) -> Void)? { get set }

    /// Header 被点击时回调（自定义行为）
    var didSelectHeader: ((Int) -> Void)? { get set }

    /// Header 高度，默认 `UITableView.automaticDimension`
    var headerHeight: CGFloat { get }

    /// Header 视图类型（返回 nil 表示无自定义 Header）
    var headerViewType: UITableViewHeaderFooterView.Type? { get }

    // MARK: - Footer

    /// Footer 将要显示时回调，对应 UITableViewDelegate:
    /// `tableView(_:willDisplayFooterView:forSection:)`
    var willDisplayFooter: ((Int) -> Void)? { get set }

    /// Footer 显示结束时回调，对应 UITableViewDelegate:
    /// `tableView(_:didEndDisplayingFooterView:forSection:)`
    var didEndDisplayingFooter: ((Int) -> Void)? { get set }

    /// 提供或配置 Footer 视图的回调，对应 UITableViewDataSource:
    /// `tableView(_:viewForFooterInSection:)`
    var viewForFooter: ((Int) -> Void)? { get set }

    /// Footer 被点击时回调（自定义行为）
    var didSelectFooter: ((Int) -> Void)? { get set }

    /// Footer 高度，默认 `UITableView.automaticDimension`
    var footerHeight: CGFloat { get }

    /// Footer 视图类型（返回 nil 表示无自定义 Footer）
    var footerViewType: UITableViewHeaderFooterView.Type? { get }
}

public extension CLSectionItemProtocol {
    // MARK: - 默认实现

    var rows: [CLRowItemProtocol] {
        get { [] }
        set {}
    }

    // Header
    var willDisplayHeader: ((Int) -> Void)? {
        get { nil }
        set {}
    }

    var didEndDisplayingHeader: ((Int) -> Void)? {
        get { nil }
        set {}
    }

    var viewForHeader: ((Int) -> Void)? {
        get { nil }
        set {}
    }

    var didSelectHeader: ((Int) -> Void)? {
        get { nil }
        set {}
    }

    var headerHeight: CGFloat {
        UITableView.automaticDimension
    }

    var headerViewType: UITableViewHeaderFooterView.Type? {
        nil
    }

    // Footer
    var willDisplayFooter: ((Int) -> Void)? {
        get { nil }
        set {}
    }

    var didEndDisplayingFooter: ((Int) -> Void)? {
        get { nil }
        set {}
    }

    var viewForFooter: ((Int) -> Void)? {
        get { nil }
        set {}
    }

    var didSelectFooter: ((Int) -> Void)? {
        get { nil }
        set {}
    }

    var footerHeight: CGFloat {
        UITableView.automaticDimension
    }

    var footerViewType: UITableViewHeaderFooterView.Type? {
        nil
    }
}
