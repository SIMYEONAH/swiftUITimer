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
                            .fill(.white.opacity(0.05))
                            .padding(-40)
                        
                        Circle()
                            .stroke(.white.opacity(0.05), lineWidth: 80)
                        //Shadow (그림자)
                        Circle()
                            .stroke(Color.blue, lineWidth: 10)
                            .blur(radius: 15)
                            .padding(-2)
                        
                        Circle()
                            .fill(Color.mint)
                            
                        
                        Circle()
                            .trim(from: 0, to: 0.5)
                            .stroke(Color.blue.opacity(0.7), lineWidth: 10)
                        
                        //동그라미
                        GeometryReader {proxy in
                            let size = proxy.size
                            
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                                .overlay(content: {
                                    Circle()
                                        .fill(.white)
                                        .padding(5)
                                })
                                .frame(width: size.width, height: size.height, alignment: .center)
                            //회전 동글이
                                .offset(x: size.height / 2)
                        }
                    }
                    .padding(60)
                    .frame(height: proxy.size.width)
                    .rotationEffect(.init(degrees: -90))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }
        .padding()
        .background {
            Color.mint.ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    Home()
        .environmentObject(pomodoroModel())
}
