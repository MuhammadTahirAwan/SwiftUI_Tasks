//
//  NavigationTask3.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 27/11/2026.
//

import SwiftUI

struct NavigationTask3: View {
    
    var fruits = ["Apple", "Banana", "Cherry"]
    
    var body: some View {
      
        
        NavigationStack{
            
            List(fruits, id: \.self){ fruit in
                
                
                NavigationLink(fruit){
                    
                    FruitDetailView(fruitName: fruit)
                }
                
            }.padding()
                .navigationTitle("Fruits")
        }
    }
}


struct FruitDetailView: View {
    let fruitName: String
    @State private var isShowingSheet: Bool = false
    
    init(fruitName: String) {
        self.fruitName = fruitName
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text(fruitName)
                .font(.largeTitle.bold())
            
            Text("Fresh and healthy \(fruitName.lowercased()).")
                .foregroundStyle(.secondary)
            
            Button("More Info") {
                isShowingSheet = true
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle(fruitName)
        .sheet(isPresented: $isShowingSheet) {
            VStack(spacing: 16) {
                Text("\(fruitName) Details")
                    .font(.title2.bold())
                
                Text("Rich in vitamins, fiber, and natural nutrients.")
                    .foregroundStyle(.secondary)
            }
            .padding()
            .presentationDetents([.medium])
        }
    }
}

#Preview {
    NavigationTask3()
}
