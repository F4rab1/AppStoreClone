//
//  TodayCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 30.06.2024.
//

import UIKit
import SnapKit

class TodayCell: UICollectionViewCell {
    
    var todayItem: TodayItem! {
        didSet {
            categoryLabel.text = todayItem.category
            titleLabel.text = todayItem.title
            imageView.image = todayItem.image
            descriptionLabel.text = todayItem.description
        }
    }
    
    let categoryLabel = UILabel(text: "LIFE HACK", font: .boldSystemFont(ofSize: 20))
    let titleLabel = UILabel(text: "Utilizing your Time", font: .boldSystemFont(ofSize: 28))
    
    let imageView = UIImageView(image: UIImage(named: "sun.max.circle"))
    
    let descriptionLabel = UILabel(text: "All the tools and apps you need to intelligently organize your life the right way.", font: .systemFont(ofSize: 16), numberOfLines: 3)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        imageView.contentMode = .scaleAspectFill
        
        let imageContainerView = UIView()
        imageContainerView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(240)
        }
        
        let stackView = VerticalStackView(arrangedSubviews: [
            categoryLabel, titleLabel, imageContainerView, descriptionLabel
            ], spacing: 8)
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(24)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
