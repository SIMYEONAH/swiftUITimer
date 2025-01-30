//
//  ContentView.swift
//  pomodoroTimer
//
//  Created by 심연아 on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var pomodoroModels: pomodoroModel
    var body: some View {
        Home()
            .environmentObject(pomodoroModels)
    }
}

#Preview {
    ContentView()
}
