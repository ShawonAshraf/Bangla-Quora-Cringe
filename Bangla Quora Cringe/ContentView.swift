//
//  ContentView.swift
//  Bangla Quora Cringe
//
//  Created by Shawon Ashraf on 10/25/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct ContentView: View {
    let posts = loadJSON()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(posts) { post in
                    Section {
                        VStack(alignment: .leading) {
                            KFImage(URL(string: post.imageUrl)!)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Text(post.comment)
                                .font(.subheadline)
                        }.padding()
                    }
                }
            }
            .navigationBarTitle("বাংলা কুয়োরা ক্রিঞ্জ")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
