//
//  RowViewController.swift
//  CLTableViewManger
//
//  Created by JmoVxia on 2025/10/16.
//

import UIKit

// MARK: - JmoVxia---类-属性
class RowViewController: UIViewController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {}

    private let tableViewManager = CLTableViewRowManager()

    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.dataSource = tableViewManager
        view.delegate = tableViewManager
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.separatorStyle = .none
        view.backgroundColor = .clear
        view.estimatedRowHeight = 500
        view.estimatedSectionHeaderHeight = 0
        view.estimatedSectionFooterHeight = 0
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

extension RowViewController {
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

private extension RowViewController {
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

private extension RowViewController {
    func configData() {
        for index in 0...40 {
            let item = CLAboutItem()
            item.title = "\(index)"
            item.subtitle = "点击打印"
            item.didSelect = { index in
                print(index)
            }
            tableViewManager.dataSource.append(item)
        }
        tableView.reloadData()
    }
}

// MARK: - JmoVxia---override

extension RowViewController {}

// MARK: - JmoVxia---objc

@objc private extension RowViewController {}

// MARK: - JmoVxia---私有方法

private extension RowViewController {}

// MARK: - JmoVxia---公共方法

extension RowViewController {}
