//
//  TodayCollectionCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 26.07.2024.
//

import UIKit
import SnapKit

class TodayTableCell: UITableViewCell {
    
    let todayImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "sun.max.circle")
        iv.contentMode = .scaleAspectFill
        
        return iv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        
        addSubview(todayImageView)
        todayImageView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(250)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

