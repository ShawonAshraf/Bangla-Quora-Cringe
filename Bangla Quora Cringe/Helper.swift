//
//  Helper.swift
//  Bangla Quora Cringe
//
//  Created by Shawon Ashraf on 10/25/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import Foundation

func loadJSON() -> [Post] {
    var posts: [Post] = []
    
    if let filePath = Bundle.main.path(forResource: "data", ofType: "json") {
        let reader = FileHandle(forReadingAtPath: filePath)
        guard let json = reader?.readDataToEndOfFile() else { return posts }
        
        guard let parsed = try? JSONDecoder().decode([Post].self, from: json) else { return posts }
        posts = parsed
    }
    
    return posts
}
