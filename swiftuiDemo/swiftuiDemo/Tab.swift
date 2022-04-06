//
//  Tab.swift
//  swiftuiDemo
//
//  Created by xbk on 2022/4/6.
//

import SwiftUI

struct TabItem:Identifiable {
    var id = UUID()
    var text:String
    var icon:String
    var tab:Tab
    var color:Color
}

var TabItems = [
    TabItem(text:"Learn now" , icon:"house",tab:.home,color: .teal),
    TabItem(text:"Explore" , icon:"magnifyingglass",tab:.explore,color: .blue),
    TabItem(text:"Notifications" , icon:"bell",tab: .notifications,color: .red),
    TabItem(text:"Library" , icon:"rectangle.stack",tab: .library,color: .pink)
    
]

enum Tab:String {
    case home
    case explore
    case notifications
    case library
}

