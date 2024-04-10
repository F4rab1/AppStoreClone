//
//  SearchResultCell.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 08.02.2024.
//

import UIKit
import SnapKit
import SDWebImage

class SearchResultCell: UICollectionViewCell {
    
    var appResult: Result! {
        didSet {
            nameLabel.text = appResult.trackName
            categoryLabel.text = appResult.primaryGenreName
            ratingsLabel.text = "Rating: \(appResult.averageUserRating ?? 0)"
            
            let url = URL(string: appResult.artworkUrl100)
            appIconImageView.sd_setImage(with: url)
            
            screenshot1ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[0]))
            if appResult.screenshotUrls.count > 1 {
                screenshot2ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[1]))
            }
            
            if appResult.screenshotUrls.count > 2 {
                screenshot3ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[2]))
            }
        }
    }
    
    let appIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.layer.cornerRadius = 12
        iv.clipsToBounds = true
        
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "APP NAME"
        
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Photos & Video"
        
        return label
    }()
    
    let ratingsLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26M"
        
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.layer.cornerRadius = 16
        
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stackview = UIStackView()
        stackview.spacing = 12
        stackview.alignment = .center
        [appIconImageView,
         VerticalStackView(arrangedSubviews: [
            nameLabel, categoryLabel, ratingsLabel
         ]),
         getButton].forEach { stackview.addArrangedSubview($0) }
        
        return stackview
    }()
    
    lazy var screenshot1ImageView = self.createScreenshotImageView()
    lazy var screenshot2ImageView = self.createScreenshotImageView()
    lazy var screenshot3ImageView = self.createScreenshotImageView()
    
    func createScreenshotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }
    
    lazy var screenshotsStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.spacing = 12
        stackview.distribution = .fillEqually
        [screenshot1ImageView, screenshot2ImageView, screenshot3ImageView].forEach { stackview.addArrangedSubview($0) }
        
        return stackview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(stackView)
        
        let overallStackView = VerticalStackView(arrangedSubviews: [stackView, screenshotsStackView], spacing: 16)
        
        addSubview(overallStackView)
        overallStackView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview().inset(16)
        }
        
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        appIconImageView.snp.makeConstraints { make in
            make.width.height.equalTo(64)
        }
        
        getButton.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(32)
        }
    }
    
}
