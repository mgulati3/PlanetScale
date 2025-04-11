//
//  JupiterView.swift
//  Lab2
//
//  Created by Manan Gulati on 11/02/25.
//

import SwiftUI

// Declaring Jupiter View
struct JupiterView: View {
    @Binding var navigationPath: NavigationPath
    let earthWeight: Double
    let moonWeight: Double

    var body: some View {
        VStack(spacing: 20) {
            
            // Jupiter title code
            Text("Jupiter View")
                .font(.largeTitle)
            
            // Display Jupiter Image
            Image("jupiter")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            // Calculating user weight on Jupiter
            let jupiterWeight = earthWeight * 2.4
            
            // Displaying Weight Information
            Text("Earth Weight: \(earthWeight, specifier: "%.2f") kg")
            Text("Moon Weight: \(moonWeight, specifier: "%.2f") kg")
            Text("Jupiter Weight: \(jupiterWeight, specifier: "%.2f") kg")
                .bold()
            
            // Display feeling message
            Text("I feel heavier!")
                .italic()
                .foregroundColor(.gray)

    
            
            // Navigation buttoon hstack
            HStack {
                
                // Button to go back to moon
                Button("Back to Moon") {
                    navigationPath.removeLast()
                }
                .buttonStyle(.bordered)
                
                // Button to go back to earth
                Button("Back to Earth") {
                    navigationPath.removeLast(2)
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}

#Preview {
    JupiterView(navigationPath: .constant(NavigationPath()), earthWeight: 70.0, moonWeight: 11.67)
}
