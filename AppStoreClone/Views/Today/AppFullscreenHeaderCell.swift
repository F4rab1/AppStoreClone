//
//  AppFullscreenHeaderCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 26.07.2024.
//

import UIKit

class AppFullscreenHeaderCell: UITableViewCell {
    
    let todayCell = TodayCell()
    
    let closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "close_button"), for: .normal)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(todayCell)
        addSubview(closeButton)
        
        todayCell.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        closeButton.snp.makeConstraints { make in
            make.top.trailing.equalToSuperview().inset(12)
            make.height.equalTo(38)
            make.width.equalTo(80)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
