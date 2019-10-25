//
//  Post.swift
//  Bangla Quora Cringe
//
//  Created by Shawon Ashraf on 10/25/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import Foundation

struct Post: Decodable, Identifiable {
    let id = UUID()
    
    var imageUrl: String
    var comment: String
}
