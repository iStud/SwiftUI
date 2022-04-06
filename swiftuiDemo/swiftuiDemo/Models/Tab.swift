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

// reduce方法在Swift中非常常见，这里的用处是当有多个子View都给父View传递数据时，父View最后是只能接受一个数据，而reduce就是将子View提供的多个数据进行“操作”，降维为一个数据提供给父View使用，PreferenceKey的reduce方法包含两个参数：当前的value，和下一个要合并的值nextValue，这二个参数是子View从上到下提供的。
struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

