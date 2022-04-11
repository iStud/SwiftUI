//
//  MatchedView.swift
//  swiftuiDemo
//
//  Created by bk.xiong on 2022/4/11.
//

import SwiftUI

struct MatchedView: View {
    
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        
        ZStack{
            
            if !show {
                
                VStack {
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                    // 标题有转场动画
                        .matchedGeometryEffect(id: "title", in:namespace)
                        .frame( maxWidth: .infinity, alignment:.leading)
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                }
                .padding(20)
                .foregroundColor(.white)
                .background(
                    
                    // 颜色也可以添加转场动画
                    Color.red.matchedGeometryEffect(id: "background", in: namespace)
                )
                .padding(20)
                
            }else{
                
                VStack {
                    Spacer()
                    
                    Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "title", in:namespace)
                        .frame( maxWidth: .infinity, alignment:.leading)

                }
                .padding(20)
                .foregroundColor(.black)
                .background(
                    Color.blue.matchedGeometryEffect(id: "background", in: namespace)
                )
            }
        }
        .onTapGesture{
            withAnimation {
                
                show.toggle()
            }
        }
    }
    
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
