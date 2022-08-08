//
//  SwiftUImemoApp.swift
//  Shared
//
//  Created by 전민우 on 2022/08/08.
//

import SwiftUI

@main
struct SwiftUImemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
