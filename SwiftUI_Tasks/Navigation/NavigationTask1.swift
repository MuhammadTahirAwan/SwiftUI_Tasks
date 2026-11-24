//
//  NavigationTask1.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 24/11/2026.
//

import SwiftUI

struct NavigationTask1: View {
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 10) {
                Text("Welcome")
                    .font(.largeTitle.bold())
                
                NavigationLink("Go to Second View") {
                    DetailView(text: "Hello, SwiftUI Navigation!")
                }
//                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("Main Screen")
        }
        
    }
}

#Preview {
    NavigationTask1()
}


/*
 
 Create a simple app that uses `NavigationStack` for navigating between two views:
 The first view should display a "Welcome" message and a button.
 Clicking the button should navigate to a second view that displays "Hello, SwiftUI Navigation!".
 Use a `NavigationLink` to set up the navigation.

 */


struct DetailView: View {
    var text: String
    
    
    var body: some View {
        VStack {
            Text(text)
        }
    }
}
