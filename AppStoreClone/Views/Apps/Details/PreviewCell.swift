//
//  PreviewCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 04.05.2024.
//

import UIKit
import SnapKit

class PreviewCell: UICollectionViewCell {
    
    let previewLabel: UILabel = {
        let label = UILabel()
        label.text = "Preview"
        label.font = .boldSystemFont(ofSize: 20)
        
        return label
    }()
    
    let horizontalController = PreviewScreenshotsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        addSubview(previewLabel)
        addSubview(horizontalController.view)
    }
    
    func setupConstraints() {
        previewLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        horizontalController.view.snp.makeConstraints { make in
            make.top.equalTo(previewLabel.snp.bottom).offset(20)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
