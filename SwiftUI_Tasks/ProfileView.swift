//
//  ProfileView.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        
        VStack{
            HStack(spacing: 12){
                
                Circle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(width: 48, height: 48)
                    .overlay(Image(systemName: "person.fill"))
                    .foregroundStyle(.primary)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 4){
                    
                    Text("Tahir")
                        .font(.title)
                    Text("iOS Dev")
                        .font(.subheadline)
                }
                
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}

/*Using `HStack` and `VStack`, build a profile row with:
 - A circular profile placeholder on the left
 - A name and subtitle stacked vertically on the right
*/
