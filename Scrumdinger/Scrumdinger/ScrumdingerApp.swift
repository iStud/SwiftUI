//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by xbk on 2022/4/13.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
               
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
