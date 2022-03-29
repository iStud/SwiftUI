//
//  ContentView.swift
//  swiftuiDemo
//
//  Created by xbk on 2022/3/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(10.0)
                .padding(9)
                .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                .strokeStyle(cornerRadius: 16)
            Text("SwiftUI for iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary,.primary.opacity(0.5)], startPoint:.topLeading, endPoint: .bottomTrailing))// 渐变
            Text("20 sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame( maxWidth: .infinity,  alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 20.0)
        .padding(.vertical,20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial)
//        .cornerRadius(30.0)
        .mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
        .shadow(color:Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .strokeStyle()
        .padding(.horizontal,20)
        .background(Image("Blob 1").offset(x: 250, y: -100))
        .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:230)
                .offset(x: 32, y: -100)
        )
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
