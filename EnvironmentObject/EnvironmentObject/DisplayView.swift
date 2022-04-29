//
//  DisplayView.swift
//  EnvironmentObject
//
//  Created by xbk on 2022/4/29.
//

import SwiftUI

struct DisplayView: View {
    
    @EnvironmentObject var user: User
    var body: some View {
        Text(user.name)
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView()
    }
}
