//
//  SearchResultCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 08.02.2024.
//

import UIKit
import SnapKit

class SearchResultCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.layer.cornerRadius = 12
        
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "APP NAME"
        
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Photos & Video"
        
        return label
    }()
    
    let ratingsLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26M"
        
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.layer.cornerRadius = 16
        
        return button
    }()

    lazy var labelsStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .vertical
        [nameLabel,
         categoryLabel,
         ratingsLabel].forEach { stackview.addArrangedSubview($0) }
        
        return stackview
    }()
    
    lazy var stackView: UIStackView = {
        let stackview = UIStackView()
        stackview.spacing = 12
        stackview.alignment = .center
        [imageView,
         labelsStackView,
         getButton].forEach { stackview.addArrangedSubview($0) }
        
        return stackview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        
        addSubview(stackView)
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.width.height.equalTo(64)
        }
        
        getButton.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(32)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
    
}
