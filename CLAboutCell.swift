//
//  CLAboutCell.swift
//  CLTableViewManger
//
//  Created by JmoVxia on 2025/10/16.
//

import SnapKit
import UIKit

class CLAboutCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        makeConstraints()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor("#333333")
        view.font = .mediumPingFangSC(16)
        return view
    }()

    private lazy var subtitleLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .right
        view.textColor = UIColor("#999999")
        view.font = .mediumPingFangSC(16)
        return view
    }()

    private lazy var arrowImageView: UIImageView = {
        let view = UIImageView()
        view.image = .init(named: "meArrowRight")
        return view
    }()

    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor("#F0F0F0")
        return view
    }()

}

extension CLAboutCell {
    private func setupUI() {
        backgroundColor = .random
        isExclusiveTouch = true
        selectionStyle = .none
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(arrowImageView)
        contentView.addSubview(lineView)
        arrowImageView.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        arrowImageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        titleLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        titleLabel.setContentHuggingPriority(.required, for: .horizontal)
    }

    private func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.top.equalTo(17.5)
            make.bottom.equalTo(-17.5)
        }
        arrowImageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalTo(-15)
        }
        subtitleLabel.snp.makeConstraints { make in
            make.left.equalTo(titleLabel.snp.right).offset(15)
            make.right.equalTo(arrowImageView.snp.left).offset(-15)
            make.centerY.equalToSuperview()
        }
        lineView.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.right.bottom.equalToSuperview()
            make.height.equalTo(0.5)
        }
    }
}

extension CLAboutCell: CLRowCellProtocol {
    func setItem(_ item: CLAboutItem, indexPath _: IndexPath) {
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
    }
}
