//
//  SwiftUImemoApp.swift
//  Shared
//
//  Created by 전민우 on 2022/08/08.
//

import SwiftUI

@main
struct SwiftUImemoApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
