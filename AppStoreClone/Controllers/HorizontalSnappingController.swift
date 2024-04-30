//
//  HorizontalSnappingController.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 30.04.2024.
//

import UIKit

class HorizontalSnappingController: UICollectionViewController {
    
    init() {
        let layout = BetterSnappingLayout()
        layout.scrollDirection = .horizontal
        super.init(collectionViewLayout: layout)
        collectionView.decelerationRate = .fast
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
