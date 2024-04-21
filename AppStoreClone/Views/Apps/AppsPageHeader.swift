//
//  AppsPageHeader.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 21.04.2024.
//

import UIKit
import SnapKit

class AppsPageHeader: UICollectionReusableView {
    
    let appHeaderHorizontalController = AppsHeaderHorizontalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        setupConstraints()
        addSubview(appHeaderHorizontalController.view)
    }
    
    func setupUI() {
        addSubview(appHeaderHorizontalController.view)
    }
    
    func setupConstraints() {
        appHeaderHorizontalController.view.snp.makeConstraints { make in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
