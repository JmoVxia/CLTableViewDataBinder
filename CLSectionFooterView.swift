//
//  CLSectionFooterView.swift
//  CLTableViewManger
//
//  Created by JmoVxia on 2025/10/16.
//

import UIKit

//MARK: - JmoVxia---枚举
extension CLSectionFooterView {
}
//MARK: - JmoVxia---类-属性
class CLSectionFooterView: UITableViewHeaderFooterView {
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        makeConstraints()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var mainStackView: UIStackView = {
        let view = UIStackView()
        view.backgroundColor = .random
        view.axis = .horizontal
        view.distribution = .equalCentering
        view.alignment = .fill
        view.insetsLayoutMarginsFromSafeArea = false
        view.isLayoutMarginsRelativeArrangement = true
        view.layoutMargins = .zero
        view.spacing = 5
        return view
    }()

    private lazy var backgroundColorView: UIView = {
        let view = UIView()
        view.backgroundColor = "#F1F4FF".uiColor
        return view
    }()

    private lazy var leftLabel: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        view.setContentCompressionResistancePriority(.required, for: .horizontal)
        view.setContentCompressionResistancePriority(.required, for: .vertical)
        view.setContentHuggingPriority(.required, for: .horizontal)
        view.setContentHuggingPriority(.required, for: .vertical)
        return view
    }()

    private lazy var rightLabel: UILabel = {
        let view = UILabel()
        return view
    }()
    
    var item: CLSectionItem?
}

// MARK: - JmoVxia---布局

private extension CLSectionFooterView {
    func setupUI() {
        contentView.addSubview(backgroundColorView)
        contentView.addSubview(mainStackView)
        mainStackView.addArrangedSubview(leftLabel)
        mainStackView.addArrangedSubview(rightLabel)
    }

    func makeConstraints() {
        backgroundColorView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        mainStackView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.bottom.equalToSuperview().priority(100)
        }
    }
}

// MARK: - JmoVxia---override

extension CLSectionFooterView {}

// MARK: - JmoVxia---CKDCellHeaderFooterProtocol

extension CLSectionFooterView: CLSectionHeaderFooterProtocol {
    func setItem(_ item: CLSectionItem, section: Int) {
        leftLabel.attributedText = item.footerTitle
        rightLabel.attributedText = item.isSelected ? item.right?.seleted : item.right?.nomal
        rightLabel.isHidden = item.right == nil
        mainStackView.layoutMargins = item.contentInsets
    }
}
