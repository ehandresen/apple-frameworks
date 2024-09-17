//
//  ContentView.swift
//  apple-frameworks
//
//  Created by Eirik Andresen on 17/09/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    var body: some View {
        VStack {
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            Text("App Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
            }
        }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView : View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            Text("App Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
            }
    }
}
