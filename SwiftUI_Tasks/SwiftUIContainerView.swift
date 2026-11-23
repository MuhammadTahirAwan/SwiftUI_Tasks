//
//  SwiftUIContainerView.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct SwiftUIContainerView: View {
    var body: some View {
        VStack(spacing: 16) {
            
            // Card 1: Text content
            CardView(title: "Daily Note") {
                Text("Review SwiftUI layout containers and @ViewBuilder patterns.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            // Card 2: Horizontal stats layout
            CardView(title: "Workout Summary") {
                HStack {
                    Label("45 min", systemImage: "clock")
                    Spacer()
                    Label("320 kcal", systemImage: "flame.fill")
                        .foregroundStyle(.orange)
                }
                .font(.subheadline)
            }
            
            // Card 3: Interactive action button
            CardView(title: "Quick Action") {
                Text("Sync your latest progress to the cloud.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Button("Sync Now") {
                    print("Syncing...")
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
        .shadow(radius: 5, y: 10)
    }
}

#Preview {
    SwiftUIContainerView()
}




struct CardView<Content: View>: View {
    let title: String
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.headline)
            
            content
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}



/*
 
 Build a reusable `CardView` component using @ViewBuilder. This view should accept a title (as String) and custom content passed from the outside. Card view should display title and custom content below the title with some padding.  Use this view to display three different cards with varying content.
 */
