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
}

var TabItems = [
    TabItem(text:"Learn now" , icon:"house"),
    TabItem(text:"Explore" , icon:"magnifyingglass"),
    TabItem(text:"Notifications" , icon:"bell"),
    TabItem(text:"Library" , icon:"rectangle.stack")
    
]

