//
//  MoodCard.swift
//  WhasubiesAppTry1
//
//  Created by Raffaele Barra on 20/10/25.
//

import SwiftUI

struct MoodCard: View {
    let question: String
    let onYes: () -> Void
    let onNo: () -> Void

    // State variable to track horizontal drag
    @Binding var dragOffset: CGSize
    private let swipeThreshold: CGFloat = 120 // distance needed to trigger a "swipe"
    
    var body: some View {
        VStack {
            // Static top text
            Text("Daily Checks")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.black)
                .padding(.top, 60)
            
            Spacer()
            
            // 🃏 The movable card with glass effect
            VStack {
                Text(question)
                    .font(.title)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 40) {
                    Button(action: onNo) {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                    }
                    
                    Button(action: onYes) {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.green)
                    }
                }
            }
            // MARK: Card Style
            .frame(maxWidth: .infinity, minHeight: 300)
            .background(.ultraThinMaterial) // 🌫️ glass effect
            .cornerRadius(50)
            .shadow(radius: 30)
            .padding()
            
            // MARK: Gesture + Movement
            .offset(x: dragOffset.width)
            .rotationEffect(.degrees(Double(dragOffset.width / 20))) // small rotation for realism
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        withAnimation(.easeOut(duration: 0.1)) {
                            dragOffset = gesture.translation
                        }
                    }
                    .onEnded { gesture in
                        if gesture.translation.width > swipeThreshold {
                            // Swiped right
                            withAnimation(.easeInOut) {
                                dragOffset.width = 500 // fly out
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                                dragOffset = .zero
                                onYes() // trigger yes action
                            }
                        } else if gesture.translation.width < -swipeThreshold {
                            // Swiped left
                            withAnimation(.easeInOut) {
                                dragOffset.width = -500
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                                dragOffset = .zero
                                onNo() // trigger no action
                            }
                        } else {
                            // Not enough movement → snap back
                            withAnimation(.spring()) {
                                dragOffset = .zero
                            }
                        }
                    }
            )
            
            Spacer(minLength: 30)
        }
    }
}

// MARK: - Preview Helper (for @Binding)
struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State private var value: Value
    let content: (Binding<Value>) -> Content

    init(_ initialValue: Value, @ViewBuilder content: @escaping (Binding<Value>) -> Content) {
        _value = State(initialValue: initialValue)
        self.content = content
    }

    var body: some View {
        content($value)
    }
}

// MARK: - Preview
#Preview {
    StatefulPreviewWrapper(CGSize.zero) { dragOffset in
        ZStack {
            // 🌈 Gradient background
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.2039, green: 0.6784, blue: 0.4431), // #34AD71 approx
                    Color(red: 1.0, green: 0.7725, blue: 0.8274)    // #FFC5D3
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            // 👇 MoodCard with working drag
            MoodCard(
                question: "Have you smiled at least once today?",
                onYes: { print("✅ User said YES") },
                onNo: { print("❌ User said NO") },
                dragOffset: dragOffset
            )
        }
    }
}

