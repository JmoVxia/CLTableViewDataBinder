//
//  SectionViewController.swift
//  CLTableViewManger
//
//  Created by 菜鸽途讯 on 2025/10/16.
//

import UIKit

// MARK: - JmoVxia---类-属性
class SectionViewController: UIViewController {
    deinit {}

    private let tableViewManager = CLTableViewSectionManager()

    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.dataSource = tableViewManager
        view.delegate = tableViewManager
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.separatorStyle = .none
        view.backgroundColor = .clear
        view.estimatedRowHeight = 80
        view.estimatedSectionHeaderHeight = 60
        view.estimatedSectionFooterHeight = 60
        view.contentInset = .zero
        view.contentInsetAdjustmentBehavior = .never
        if #available(iOS 13.0, *) {
            view.automaticallyAdjustsScrollIndicatorInsets = false
        }
        if #available(iOS 15.0, *) {
            view.sectionHeaderTopPadding = 0
        }
        return view
    }()
}

// MARK: - JmoVxia---生命周期

extension SectionViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        makeConstraints()
        configData()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}

// MARK: - JmoVxia---布局

private extension SectionViewController {
    func setupUI() {
        view.backgroundColor = .white
        view.addSubview(tableView)
    }

    func makeConstraints() {
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.right.bottom.equalToSuperview()
        }
    }
}

// MARK: - JmoVxia---数据

private extension SectionViewController {
    func configData() {
        let section = CLSectionItem()
        section.didSelectFooter = {index in
            print("点击footer\(index)")
        }
        section.didSelectHeader = {index in
            print("点击header\(index)")
        }
        section.headTitle = NSMutableAttributedString(string: "我是Section Head")
        section.footerTitle = NSMutableAttributedString(string: "我是Section footer")
        section.rows.append({
            let item = CLAboutItem()
            item.title = "row标题"
            item.subtitle = "row副标题"
            item.didSelect = { index in
                print(index)
            }
            return item
        }())
        tableViewManager.dataSource.append(section)
        tableViewManager.dataSource.append(section)
        
        tableView.reloadData()
    }
}

// MARK: - JmoVxia---override

extension SectionViewController {}

// MARK: - JmoVxia---objc

@objc private extension SectionViewController {}

// MARK: - JmoVxia---私有方法

private extension SectionViewController {}

// MARK: - JmoVxia---公共方法

extension SectionViewController {}
