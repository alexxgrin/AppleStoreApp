//
//  File.swift
//  AppleStoreApp
//
//  Created by Alex Grinberg on 28/04/2019.
//  Copyright © 2019 Alex Grinberg. All rights reserved.
//

import Foundation

class Service {
    
    static let shared = Service()
    
    func fetchApps(completion: @escaping ([Result], Error?) -> ()) {
        
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        guard let url = URL(string: urlString) else {return}
        
        //Fetch from the internet
        
        URLSession.shared.dataTask(with: url, completionHandler: {(data, resp, err) in
            
            if let err = err {
                print("Failed to fetch applications", err)
                completion([], nil)
                return
            }
            guard let data = data else {return}
            
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                completion(searchResult.results, nil)
                
            } catch let jsonErr {
                completion([], jsonErr)
                print("Failed to decode json:", jsonErr)
            }
            
        }).resume()
    }
    
}
