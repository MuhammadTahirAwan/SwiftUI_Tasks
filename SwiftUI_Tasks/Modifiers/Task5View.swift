//
//  Task5View.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct Task5View: View {
    var body: some View {
        
        
        Text("SwiftUI is amazing!")
            .foregroundStyle(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(.gray))
        
            .overlay(
                
                Circle()
                    .fill(.white)
                    .opacity(0.3)
                
            ).clipShape(Circle())
            
    }
}

#Preview {
    Task5View()
}


/*
 
 Create a `Text` view that displays "SwiftUI is amazing!". Add a `background` modifier that applies a gray rectangle behind the text. Then add an overlay modifier to place a semi-transparent `Circle` over the text. Then, using the `clipShape` modifier, remake your view this way, that text would be inside the circle, revealing only the "center" part of initial string.
 
 */
