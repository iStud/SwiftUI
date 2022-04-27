//
//  ToggleTextButton.swift
//  List
//
//  Created by xbk on 2022/4/27.
//

import SwiftUI

struct ToggleTextButton: View {
    
    @Binding var isOn:Bool // @Binding 作用：子视图能够改变我们父视图里面的@State属性
    //使用的步骤：1.在子视图的属性前面写关键词 @Binding 2.父视图的属性前面得用@State修饰 3.当把父视图的@State属性传到子视图的时候，在属性名前面加上$
    var body: some View {
       
        Button {
            self.isOn.toggle() // 报错：Cannot use mutating member on immutable value: 'self' is immutable
        } label: {
            Text(self.isOn ? "Hide":"Show")
        }

    }
}

struct ToggleTextButton_Previews: PreviewProvider {
    
    @State static var myCoolBool = true
    static var previews: some View {
        ToggleTextButton(isOn: $myCoolBool)
    }
}
