//
//  AppRowCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 19.04.2024.
//

import UIKit
import SnapKit

class AppRowCell: UICollectionViewCell {
    
    let appIconImageView = UIImageView(cornerRadius: 8)
    
    let nameLabel = UILabel(text: "App Name", font: .systemFont(ofSize: 20))
    let companyLabel = UILabel(text: "Company Name", font: .systemFont(ofSize: 13))
    
    let getButton = UIButton(title: "GET")
    
    lazy var stackView: UIStackView = {
        let stackview = UIStackView()
        stackview.spacing = 12
        stackview.alignment = .center
        [appIconImageView,
         VerticalStackView(arrangedSubviews: [
            nameLabel, companyLabel
         ]),
         getButton].forEach { stackview.addArrangedSubview($0) }
        
        return stackview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(stackView)
        
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        appIconImageView.snp.makeConstraints { make in
            make.width.height.equalTo(64)
        }
        
        getButton.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(32)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.bottom.leading.equalToSuperview()
            make.trailing.equalToSuperview().inset(8)
        }
    }
    
}
