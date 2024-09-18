//
//  ContentView.swift
//  apple-frameworks
//
//  Created by Eirik Andresen on 17/09/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        FrameworkTitleView(appName: "App Clips", imageName: "app-clip")
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView : View {
    let appName: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(appName)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
            }
    }
}
