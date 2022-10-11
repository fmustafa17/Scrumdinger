//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Farhana Mustafa on 10/10/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
