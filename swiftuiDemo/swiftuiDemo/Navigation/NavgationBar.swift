//
//  NavgationBar.swift
//  swiftuiDemo
//
//  Created by bk.xiong on 2022/4/6.
//

import SwiftUI

struct NavgationBar: View {
    
    var title = ""
    
    var body: some View {
        
        ZStack {
            
            Color.clear
                .background(.ultraThinMaterial)
            .blur(radius: 10)
            
            Text(title)
                .font(.largeTitle.weight(.bold))
                .frame( maxWidth: .infinity, alignment: .leading)
                .padding(.leading,20)
        }
        .frame( height: 70)
        .frame( maxHeight: .infinity, alignment: .top)
        
        
    }
}

struct NavgationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavgationBar()
    }
}
