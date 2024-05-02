//
//  AppDetailCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 01.05.2024.
//

import UIKit
import SnapKit

class AppDetailCell: UICollectionViewCell {
    
    var app: Result! {
        didSet {
            nameLabel.text = app?.trackName
            releaseNotesLabel.text = app?.releaseNotes
            appIconImageView.sd_setImage(with: URL(string: app?.artworkUrl100 ?? ""))
            priceButton.setTitle(app?.formattedPrice, for: .normal)
        }
    }
    
    let appIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 16
        iv.clipsToBounds = true
        iv.backgroundColor = .red
        
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "APP NAME"
        label.font = .boldSystemFont(ofSize: 24)
        label.numberOfLines = 2
        
        return label
    }()
    
    let priceButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("2500 ₸", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.layer.cornerRadius = 16
        button.backgroundColor = .blue
        
        return button
    }()
    
    let whatsNewLabel: UILabel = {
        let label = UILabel()
        label.text = "What's New"
        label.font = .boldSystemFont(ofSize: 20)
        
        return label
    }()
    
    let releaseNotesLabel: UILabel = {
        let label = UILabel()
        label.text = "Release Notes"
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = VerticalStackView(arrangedSubviews: [
            UIStackView(arrangedSubviews: [
                appIconImageView,
                VerticalStackView(arrangedSubviews: [
                    nameLabel,
                    UIStackView(arrangedSubviews: [priceButton, UIView()]),
                    UIView()
                    ], spacing: 12)
                ], customSpacing: 20),
            whatsNewLabel,
            releaseNotesLabel
            ], spacing: 16)
        addSubview(stackView)
        
        setupConstraints()
        stackView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview().inset(20)
        }
    }
    
    func setupConstraints() {
        appIconImageView.snp.makeConstraints { make in
            make.width.height.equalTo(140)
        }
        
        priceButton.snp.makeConstraints { make in
            make.height.equalTo(32)
            make.width.equalTo(80)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], customSpacing: CGFloat = 0) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.spacing = customSpacing
    }
}
