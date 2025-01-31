//
//  Home.swift
//  pomodoroTimer
//
//  Created by 심연아 on 1/31/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Text("Pomodoro Timer")
                .font(.title2.bold())
                .foregroundColor(.white)
            GeometryReader{proxy in
            }
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}

#Preview {
    Home()
        .environmentObject(pomodoroModel())
}
