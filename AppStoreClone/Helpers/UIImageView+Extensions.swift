//
//  UIImageView+Extensions.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 05.05.2024.
//

import UIKit

extension UIImageView {
    convenience init(cornerRadius: CGFloat) {
        self.init(image: nil)
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
    }
}
