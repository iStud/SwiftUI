//
//  HomeView.swift
//  swiftuiDemo
//
//  Created by xbk on 2022/4/6.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        ScrollView {
            FeaturedItem()
            Color.clear.frame(height:1000)
        }
        .safeAreaInset(edge: .top, content: {
            Color.clear.frame(height:70)
        })
        .overlay(
            NavgationBar(title: "Featured")
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
