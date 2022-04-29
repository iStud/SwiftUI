//
//  EditView.swift
//  EnvironmentObject
//
//  Created by xbk on 2022/4/29.
//

import SwiftUI

struct EditView: View {
    
    @EnvironmentObject var user: User
    // @EnvironmentObject 修饰的对象任何子view 都能访问
    var body: some View {
        TextField("Name",text: $user.name)
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
