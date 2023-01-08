//
//  ContentView.swift
//  SwUi_UserDefaults
//
//  Created by Marcelo Sampaio on 07/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    @AppStorage(Constants.tapAppSorage) private var tapStorage = 0
    
    var body: some View {
        VStack {
            Button("tap count: \(viewModel.tapCount) - tap Storage: \(tapStorage)") {
                viewModel.buttonAction()
                tapStorage += 1
            }
            .buttonStyle(.borderedProminent)
            Text("score: \(viewModel.score)")
        }
        .task {
            viewModel.onAppear()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
