//
//  Result.swift
//  AppleStoreApp
//
//  Created by Alex Grinberg on 28/04/2019.
//  Copyright © 2019 Alex Grinberg. All rights reserved.
//

import UIKit

struct SearchResult: Decodable {
    let resultCount: Int?
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
}

struct Course: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    
    //    init(json: [String: Any]) {
    //        id = json["id"] as? Int ?? -1
    //        name = json["name"] as? String ?? ""
    //        link = json["link"] as? String ?? ""
    //        imageUrl = json["imageUrl"] as? String ?? ""
    //    }
}


