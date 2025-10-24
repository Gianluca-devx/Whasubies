//
//  SwipeView.swift
//  WhasubiesAppTry1
//
//  Created by Raffaele Barra on 23/10/25.
//

import SwiftUI

struct SwipeView: View {
    @State private var currentIndex = 0
    @State private var dragOffset: CGSize = .zero
    @State private var showDoneAnimation = false
    
    // 🧠 The daily questions
    private let questions = [
        "Are you feeling stressed today?",
        "Did you sleep well last night?",
        "Do you feel motivated today?"
    ]
    
    var body: some View {
        ZStack {
            // 🌈 Background gradient
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.2039, green: 0.6784, blue: 0.4431),
                    Color(red: 1.0, green: 0.7725, blue: 0.8274)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            // 🟥🟩 Dynamic overlay (changes as you drag)
            // 🟥🟩 Dynamic overlay (changes as you drag)
            // 🟥🟩 Dynamic overlay (changes as you drag)
            GeometryReader { geo in
                ZStack {
                    if dragOffset.width < 0 {
                        // Left side turns red
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.red.opacity(0.3))
                            .frame(width: geo.size.width / 2,
                                   height: geo.size.height * 0.8) // covers bottom area
                            // 👇 position lower to include tab bar area
                            .position(x: geo.size.width / 4,
                                      y: geo.size.height * 0.8)
                            .ignoresSafeArea(edges: .bottom) // ✅ ensures it extends behind tab bar
                            .transition(.opacity)
                    } else if dragOffset.width > 0 {
                        // Right side turns green
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.green.opacity(0.3))
                            .frame(width: geo.size.width / 2,
                                   height: geo.size.height * 0.8)
                            .position(x: geo.size.width * 3 / 4,
                                      y: geo.size.height * 0.8)
                            .ignoresSafeArea(edges: .bottom)
                            .transition(.opacity)
                    }
                }
            }
            .allowsHitTesting(false)



            
            // 🎉 All done animation
            if showDoneAnimation {
                VStack {
                    Text("All done for today!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .transition(.scale.combined(with: .opacity))
                        .padding()
                }
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.5)) {
                        // Optionally add confetti or fade-out
                    }
                }
            } else {
                // 🃏 Active mood card
                if currentIndex < questions.count {
                    MoodCard(
                        question: questions[currentIndex],
                        onYes: nextQuestion,
                        onNo: nextQuestion,
                        dragOffset: $dragOffset
                    )
                    .animation(.easeInOut, value: dragOffset)
                }
            }
        }
        .animation(.easeInOut, value: dragOffset)
    }
    
    // MARK: - Move to next question or finish
    private func nextQuestion() {
        withAnimation {
            if currentIndex < questions.count - 1 {
                currentIndex += 1
            } else {
                showDoneAnimation = true
            }
        }
    }
}

#Preview {
    SwipeView()
}

