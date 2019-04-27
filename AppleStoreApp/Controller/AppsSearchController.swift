//
//  AppsSearchController.swift
//  AppleStoreApp
//
//  Created by Alex Grinberg on 27/04/2019.
//  Copyright © 2019 Alex Grinberg. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class AppsSearchController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
    }
    
    
    /////USE TO INITIALIZE THE COLLECTION VIEW VIEW CONTROLLER////
    /////CAN BE INITIALIZE LIKE THIS OR AS IT WAS WRITTEN AT/////
    ////////////////BASE TAB BAR CONTROLLER//////////////////////
    override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
