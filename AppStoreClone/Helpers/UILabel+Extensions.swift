//
//  UILabel+Extensions.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 05.05.2024.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont, numberOfLines: Int = 1) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.numberOfLines = numberOfLines
    }
}
