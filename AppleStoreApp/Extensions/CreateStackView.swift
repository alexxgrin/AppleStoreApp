//
//  CreateStackView.swift
//  AppleStoreApp
//
//  Created by Alex Grinberg on 28/04/2019.
//  Copyright © 2019 Alex Grinberg. All rights reserved.
//

import UIKit

class CreateStackView: UIStackView {
    
    init(arrangedSubviews: [UIView], spacing: CGFloat, translatesAutoresizingMaskIntoConstraints: Bool, clipsToBounds: Bool, masksToBounds: Bool) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach({addArrangedSubview($0)})
        
        self.spacing = spacing
        self.axis = .vertical
        self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        self.clipsToBounds = clipsToBounds
        self.layer.masksToBounds = masksToBounds
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class VerticalStackView: UIStackView {
    
    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach({addArrangedSubview($0)})
        
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

