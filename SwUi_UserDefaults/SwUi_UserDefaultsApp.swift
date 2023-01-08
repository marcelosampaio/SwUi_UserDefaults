//
//  SwUi_UserDefaultsApp.swift
//  SwUi_UserDefaults
//
//  Created by Marcelo Sampaio on 07/01/23.
//

import SwiftUI

@main
struct SwUi_UserDefaultsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ViewModel())
        }
    }
}
