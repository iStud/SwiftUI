//
//  ContentView.swift
//  swiftuiDemo
//
//  Created by xbk on 2022/3/28.
//

import SwiftUI

struct ContentView: View {

    // @State存储修改该属性
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            Group{
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBar()
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro Max")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13 Pro Max")
        }
    }
    
}
