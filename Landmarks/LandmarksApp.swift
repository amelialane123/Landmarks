//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Amelia Lane on 10/22/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
