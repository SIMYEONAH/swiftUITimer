//
//  pomodoroTimerApp.swift
//  pomodoroTimer
//
//  Created by 심연아 on 1/27/25.
//

import SwiftUI

@main
struct pomodoroTimerApp: App {
    // MARK: 백그라운드 fetching하기 때문에 여기에 초기화 할 것.
    @StateObject var pomodoroModels: pomodoroModel = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(pomodoroModels)
        }
    }
}
