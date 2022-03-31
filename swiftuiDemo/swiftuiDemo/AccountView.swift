//
//  AccountView.swift
//  swiftuiDemo
//
//  Created by xbk on 2022/3/29.
//

import SwiftUI

struct AccountView: View {
    
    @State var isDeleted = false
    @State var isPinded = false
    
    var body: some View {
        NavigationView {
            List {
                
                prfile
                menu
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
        
    }
    
    var prfile : some View{
        VStack(spacing:8) {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue,.blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
                        .offset(x: -50, y: -100)
                )
            Text("Meng To")
                .font(.title.weight(.semibold))
            HStack {
                Image(systemName: "location")
                    .imageScale(.large)
                Text("Canada")
                    .foregroundColor(.secondary)
            }
        }
        .frame( maxWidth:.infinity)
        .padding()
    }
    
    var menu : some View{
        Section {
            NavigationLink(destination: ContentView()){ Label("Settings",systemImage: "gear")
            }
            NavigationLink{Text("Billing")} label: {
                Label("Billing",systemImage: "creditcard")
            }
            NavigationLink{ContentView() } label:{ Label("helping",systemImage: "questionmark")
            }
        }
        .accentColor(.primary)
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
    }
    
    var links:some View{
        Section {
            if !isDeleted {
                Link(destination: URL(string: "https://www.bilibili.com")!) {
                    HStack {
                        Label("webside",systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: true) {
                    Button(action: {isDeleted = true}) {
                        Label("Delete",systemImage: "trash")
                    }
                    .tint(.red)
                    pinButton
                }
            }
            Link(destination:URL(string: "https//apple.com")!) {
                
                HStack {
                    Label("Youtube",systemImage: "tv")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
    var pinButton:some View{
        
        Button{ isPinded.toggle() } label:{
            
            if isPinded {
                Label("Unpin",systemImage: "pin.slash")
            }else{
                Label("Pin",systemImage: "pin")
            }
        }
        .tint(isPinded ? .gray:.yellow)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
