//
//  LogicquestionApp.swift
//  Logicquestion
//
//  Created by Manjeet kumar on 17/10/24.
//

import SwiftUI

@main
struct LogicquestionApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
