//
//  DZStack.swift
//  SwiftUIDic
//
//  Created by bk.xiong on 2022/4/11.
//

import SwiftUI

struct DZStack: View {
    var body: some View {
        
    
        VStack{
            
            myZStack // 我的例子
            
            officalZStack // 官方的例子
        }
        
    }
    
    var myZStack : some View{
        
        // ZStack子元素会在z轴方向上叠加，有点像UIView从底部一直往上叠加,Hello, World! 是在 ZStack 是什么 上面
        ZStack {
            
            Text("ZStack 是什么")
                .font(.largeTitle)
            Text("Hello, World!")
                .font(.title)
                .foregroundColor(Color.red)
        }
    }
    
    var officalZStack : some View{
        
        // 可以添加对其方式
        // 红色图形和蓝色图形都是左对齐的，蓝色在红色的上面
        ZStack(alignment: .bottomLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 50)
            Rectangle()
                .fill(Color.blue)
                .frame(width:50, height: 25)
        }
        .border(Color.green, width: 1)
    }
}

struct DZStack_Previews: PreviewProvider {
    static var previews: some View {
        DZStack()
    }
}
