//
//  TodayCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 30.06.2024.
//

import UIKit
import SnapKit

class TodayCell: UICollectionViewCell {
    
    let todayImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "sun.max.circle")
        iv.contentMode = .scaleAspectFill
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        contentView.addSubview(todayImageView)
        
        todayImageView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(250)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
