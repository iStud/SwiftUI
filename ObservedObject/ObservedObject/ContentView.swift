//
//  ContentView.swift
//  ObservedObject
//
//  Created by xbk on 2022/4/29.
//

import SwiftUI

class User:ObservableObject{ // 在引用类型中使用，当属性发生更改，关注者会收到通知
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ContentView: View {
    
    // 通过 @ObservedObject 知道类的属性发生了修改，注意要遵守协议
    @ObservedObject var user = User()
    
    var body: some View {
        VStack {
            
            Text("Your name is \(user.firstName) \(user.lastName)")
            TextField("First name",text: $user.firstName)
            TextField("Last name",text: $user.lastName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
