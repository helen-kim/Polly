//
//  PageCell.swift
//  Polly
//
//  Created by Sophie Zhao on 4/15/18.
//  Copyright © 2018 translators. All rights reserved.

import UIKit

class PageCell: UICollectionViewCell {
    
    let crashCourseImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "capstone v1-1"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .purple
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
