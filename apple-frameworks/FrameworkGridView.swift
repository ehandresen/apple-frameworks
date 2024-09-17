import SwiftUI

struct FrameworkGridView: View {
    
    let frameworks = MockData.frameworks
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(frameworks, id: \.name) { framework in
                    FrameworkView(framework: framework)
                }
            }
            .padding()
        }
    }
}

struct FrameworkView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .cornerRadius(8)
            
            Text(framework.name)
                .font(.headline)
                .padding(.top, 5)
            
            Text(framework.description)
                .font(.subheadline)
                .lineLimit(3) // Limit the text to 3 lines
                .padding(.horizontal)
                .padding(.top, 1)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

#Preview {
    FrameworkGridView()
}
