//
//  ContentView.swift
//  Lab2
//
//  Created by Manan Gulati on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    
    // Declaring state variables
    @State private var weightOnEarth: String = ""
    @State private var navigationPath = NavigationPath()
    @State private var message: String = ""
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(spacing: 20) {
                
                // Display Title
                Text("Earth View")
                    .font(.largeTitle)
                
                // Display Image
                Image("earth")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                // Weight Text Feild
                TextField("Enter your weight (kg)", text: $weightOnEarth)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .padding()
                
                if !message.isEmpty {
                    Text(message)
                        .foregroundColor(.blue)
                        .italic()
                }
                
                // Navigation button to Moon View
                Button("Go to Moon") {
                    if let weight = Double(weightOnEarth) {
                        navigationPath.append(MoonViewData(earthWeight: weight))
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            // Navigation to moon view
            .navigationDestination(for: MoonViewData.self) { data in
                MoonView(navigationPath: $navigationPath, earthWeight: data.earthWeight)
            }
        }
    }
}

struct MoonViewData: Hashable {
    let earthWeight: Double
}

#Preview {
    ContentView()
}
