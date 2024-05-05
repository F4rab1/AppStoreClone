//
//  UIButton+Extensions.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 05.05.2024.
//

import UIKit

extension UIButton {
    convenience init(title: String) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
    }
}
