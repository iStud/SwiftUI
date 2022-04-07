//
//  PreferenceKeys.swift
//  swiftuiDemo
//
//  Created by xbk on 2022/4/7.
//

import SwiftUI

struct ScrollPreferenceKey:PreferenceKey{
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
