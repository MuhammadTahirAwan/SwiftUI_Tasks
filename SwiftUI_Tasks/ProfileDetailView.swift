//
//  ProfileDetailView.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let location: String
    var isPremium: Bool = false
}

struct ProfileDetailView: View {
    private let users = [
        User(name: "Tahir", age: 27, location: "Buenos Aires", isPremium: true),
        User(name: "Franklin", age: 31, location: "Melbourne", isPremium: false)
    ]
    
    var body: some View {
        List(users) { user in
            // ZStack layers the "Premium Badge" over the top-trailing corner of the card
            ZStack(alignment: .topTrailing) {
                ProfileCardView(title: user.name) {
                    HStack(spacing: 14) {
                        Circle()
                            .fill(Color.secondary.opacity(0.3))
                            .frame(width: 52, height: 52)
                            .overlay(
                                Image(systemName: "person.fill")
                                    .foregroundStyle(.primary)
                            )
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Age: \(user.age)")
                                .font(.subheadline)
                            
                            Text(user.location)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        
                        Spacer()
                    }
                }
                
                if user.isPremium {
                    Label("Premium Badge", systemImage: "crown.fill")
                        .font(.caption2.bold())
                        .foregroundStyle(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.orange)
                        .clipShape(Capsule())
                        .padding(10)
                }
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

struct ProfileCardView<Content: View>: View {
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

#Preview {
    ProfileDetailView()
}


/*
 
 Create a profile detail screen using a combination of `VStack`, `HStack`, and `ZStack`. If the user’s isPremium property is true, show a "Premium Badge" overlay using `ZStack`. Otherwise, show only name, age, and location.
 
 
*/
