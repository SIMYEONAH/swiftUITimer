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
                VStack(spacing: 15) {
                    //Timer Ring 부분
                    ZStack{
                        Circle()
                            .stroke(Color.blue.opacity(0.7), lineWidth: 10)
                    }
                    .padding(60)
                    .frame(height: proxy.size.width)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
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
