//
//  AppsSearchController.swift
//  AppleStoreApp
//
//  Created by Alex Grinberg on 27/04/2019.
//  Copyright © 2019 Alex Grinberg. All rights reserved.
//

import UIKit

class AppsSearchController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        
        collectionView.register(SearchResultCell.self, forCellWithReuseIdentifier: cellId)
        
        fetchItunesApps()
        
    }
    
  //Mapping the JSON from iTunes App. See the response, sretrieve the required fields and create new objects for receiving this value
    

    func fetchItunesApps() {
        //Search URL from iTunes page for searching any parameter. From this we get the URL for searching
        
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        guard let url = URL(string: urlString) else {return}
        
        //Fetch from the internet
        
        URLSession.shared.dataTask(with: url, completionHandler: {(data, resp, err) in
         
            if let err = err {
                print("Failed to fetch applications", err)
                return
            }
            guard let data = data else {return}
            
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                searchResult.results.forEach({print($0.trackName, $0.primaryGenreName)})
                
            } catch let jsonErr {
                print("Failed to decode json:", jsonErr)
            }
        
//            print(data as Any)
//            print(String(data: data, encoding: .utf8) as Any)
            
        }).resume()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 350)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SearchResultCell
        cell.nameLabel.text = "App Name"
        return cell
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
