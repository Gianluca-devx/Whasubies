////
////  DestinationView.swift
////  NavigationWS
////
////  Created by Gianluca Pascarella on 15/10/25.
////
//
//import SwiftUI
//
//struct ContentViews: View {
//    @State private var showSheet = false
//    @State private var userInput = "" // text the user types
//    
//    var body: some View {
//        VStack {
//            Text("Typed text: \(userInput)")
//                .padding()
//            
//            Button("Open Sheet") {
//                showSheet.toggle()
//            }
//            .buttonStyle(.borderedProminent)
//            .sheet(isPresented: $showSheet) {
//                InputSheet(userInput: $userInput)
//            }
//        }
//        .padding()
//    }
//}
//
//struct InputSheet: View {
//    @Binding var userInput: String
//    @Environment(\.dismiss) var dismiss
//    
//    var body: some View {
//        NavigationView {
//            VStack(spacing: 20) {
//                Text("Enter your text:")
//                    .font(.headline)
//                
//                TextField("Type something...", text: $userInput)
//                    .textFieldStyle(.roundedBorder)
//                    .padding(.horizontal)
//                
//                Button("Done") {
//                    dismiss() // close the sheet
//                }
//                .buttonStyle(.borderedProminent)
//                .padding(.top, 10)
//            }
//            .padding()
//            .navigationTitle("Input Sheet")
//            .navigationBarTitleDisplayMode(.inline)
//        }
//    }
//}
//
//#Preview {
//    ContentViews()
//}

//import SwiftUI
//
//struct ContentViews: View {
//    @State private var showSheet = false
//    @State private var userText = ""
//    
//    var body: some View {
//        VStack {
//            Text("Your text:")
//                .font(.headline)
//            ScrollView {
//                Text(userText.isEmpty ? "Nothing written yet" : userText)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding()
//                    .background(Color(.systemGray6))
//                    .cornerRadius(10)
//                    .padding()
//            }
//            
//            Button("Open Full-Page Sheet") {
//                showSheet.toggle()
//            }
//            .buttonStyle(.borderedProminent)
//        }
//        .sheet(isPresented: $showSheet) {
//            FullPageTextSheet(userText: $userText)
//        }
//    }
//}
//
//struct FullPageTextSheet: View {
//    @Binding var userText: String
//    @Environment(\.dismiss) var dismiss
//    
//    var body: some View {
//        NavigationView {
//            TextEditor(text: $userText)
//                .padding()
//                .scrollContentBackground(.hidden) // optional: make it clean
//                .background(Color(.systemGray6))
//                .navigationTitle("Edit Text")
//                .navigationBarTitleDisplayMode(.inline)
//                .toolbar {
//                    ToolbarItem(placement: .confirmationAction) {
//                        Button("Done") { dismiss() }
//                    }
//                }
//        }
//    }
//}
//
//#Preview {
//    ContentViews()
//}
