//
//  ViewModel.swift
//  SwUi_UserDefaults
//
//  Created by Marcelo Sampaio on 07/01/23.
//

import SwiftUI
import Combine

//let tapKey = "UD_Tap"
//let tapAppSorage = "SG_Tap"

class ViewModel: ObservableObject {
    @Published var score: Int = 0
    @Published var tapCount = UserDefaults.standard.integer(forKey: Constants.tapKey)
    
    func buttonAction() {
        self.tapCount += 1
        UserDefaults.standard.set(tapCount, forKey: Constants.tapKey)
    }
    
    func onAppear() {
        self.score = 9732
    }
}
