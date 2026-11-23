//
//  RectangleView.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        
        
        ZStack(alignment: .center) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 100)
            
            // 2. Second rectangle aligned to the top-right (topTrailing) of the screen
            Rectangle()
                .fill(Color.blue)
                .frame(width: 80, height: 80)
//                .frame(
//                    maxWidth: .infinity,
//                    maxHeight: .infinity,
//                    alignment: .topTrailing     // 2. Creates a full-screen container and pins the 80×80 box to its top-right corner
//                )
                .offset(x: 150, y: -300)
                .padding()
            
        }
        
    }
}

#Preview {
    RectangleView()
}


/*
 
 Create a `Rectangle` view with a red color and use the `frame` modifier to set its width to 150 and height to 100. Center the view inside the parent container using the `alignment` parameter. Add a second `Rectangle` inside the parent container and align it to the top-right of the screen.
 
 */
