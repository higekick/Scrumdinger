//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by hige on 2022/02/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
