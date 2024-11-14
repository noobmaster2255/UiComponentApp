//
//  UiComponentAppApp.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-13.
//

import SwiftUI

@main
struct UiComponentAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
