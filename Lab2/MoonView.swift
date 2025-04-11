//
//  MoonView.swift
//  Lab2
//
//  Created by Manan Gulati on 11/02/25.
//

import SwiftUI

// Defining Moon View
struct MoonView: View {
    @Binding var navigationPath: NavigationPath
    let earthWeight: Double

    var body: some View {
        VStack(spacing: 20) {
            
            // Displaying title
            Text("Moon View")
                .font(.largeTitle)
            
            // Displaying image fo moon
            Image("moon")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            // converting earth weight to moon weight
            let moonWeight = earthWeight / 6.0
            
            // DIsplaying weight Inofmration
            Text("Earth Weight: \(earthWeight, specifier: "%.2f") kg")
            Text("Moon Weight: \(moonWeight, specifier: "%.2f") kg")
                .bold()
            
            // Displaying a feeling message
            Text("I feel much lighter!")
                .italic()
                .foregroundColor(.gray)
            
            // Navigation button in hstack
            HStack {
                
                // Navigation button to go to jupiter
                Button("Go to Jupiter") {
                    navigationPath.append(JupiterViewData(earthWeight: earthWeight, moonWeight: moonWeight))
                }
                .buttonStyle(.borderedProminent)
                
                // Navigation button to go back to earth
                Button("Back to Earth") {
                    navigationPath.removeLast()
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
        .navigationDestination(for: JupiterViewData.self) { data in
            JupiterView(navigationPath: $navigationPath, earthWeight: data.earthWeight, moonWeight: data.moonWeight)
        }
    }
}

// DEFINING Jupiter struct
struct JupiterViewData: Hashable {
    let earthWeight: Double
    let moonWeight: Double
}

#Preview {
    MoonView(navigationPath: .constant(NavigationPath()), earthWeight: 70.0)
}
