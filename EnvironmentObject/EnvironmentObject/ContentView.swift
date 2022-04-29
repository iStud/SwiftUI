//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by xbk on 2022/4/29.
//

import SwiftUI

class User:ObservableObject{
    
    @Published var name = "Taylor Swift"
    
}

struct ContentView: View {
    
    let user = User()
    
    
    var body: some View {

        VStack{
            EditView().environmentObject(user)
            DisplayView().environmentObject(user)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
