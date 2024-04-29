//
//  AppHeaderCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 21.04.2024.
//

import UIKit

class AppsHeaderCell: UICollectionViewCell {
    
    let companyLabel: UILabel = {
        let label = UILabel()
        label.text = "Facebook"
        label.textColor = .blue
        label.font = .boldSystemFont(ofSize: 12)
        
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Keeping up with friends is faster than ever"
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 24)
        
        return label
    }()
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 8
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = VerticalStackView(arrangedSubviews: [
            companyLabel,
            titleLabel,
            imageView
            ], spacing: 12)
        addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(16)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
