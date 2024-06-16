//
//  ReviewRowCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 16.06.2024.
//

import UIKit
import SnapKit

class ReviewRowCell: UICollectionViewCell {
    
    let reviewsController = ReviewsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .yellow
        
        addSubview(reviewsController.view)
        reviewsController.view.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
