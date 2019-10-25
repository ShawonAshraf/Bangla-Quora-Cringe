//
//  ContentView.swift
//  Bangla Quora Cringe
//
//  Created by Shawon Ashraf on 10/25/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let posts = loadJSON()
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.comment)
            }.navigationBarTitle("বাংলা কুয়োরা ক্রিঞ্জ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
