//
//  ReviewCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 16.06.2024.
//

import UIKit
import SnapKit

class ReviewCell: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "Review Title", font: .boldSystemFont(ofSize: 18))
    let authorLabel = UILabel(text: "Author", font: .systemFont(ofSize: 16))
    let starsStackView: UIStackView = {
        var arrangedSubviews = [UIView]()
        (0..<5).forEach({ (_) in
            let imageView = UIImageView(image: #imageLiteral(resourceName: "star"))
            imageView.snp.makeConstraints { make in
                make.width.equalTo(24)
                make.height.equalTo(24)
            }
            arrangedSubviews.append(imageView)
        })
        
        arrangedSubviews.append(UIView())
        
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        return stackView
    }()
    let bodyLabel = UILabel(text: "Review body\nReview body\nReview body\n", font: .systemFont(ofSize: 18), numberOfLines: 5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        layer.cornerRadius = 16
        clipsToBounds = true
        
        let stackView = VerticalStackView(arrangedSubviews: [
            UIStackView(arrangedSubviews: [
                titleLabel, UIView(), authorLabel
                ]),
            starsStackView,
            bodyLabel
            ], spacing: 12)
        
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview().inset(20)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
