//
//  ContentView.swift
//  apple-frameworks
//
//  Created by Eirik Andresen on 17/09/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    // id here is reduedent becasue our struct has type Identifiable with an id
                    ForEach(MockData.frameworks, id: \.id) { item in
                        FrameworkTitleView(framework: item)
                    }
                }
            }
            .navigationTitle(" Frameworks")
        }
        
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView : View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
            }
        .padding()
    }
}
