//
//  Task4View.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct Task4View: View {
    var body: some View {
        
        VStack{
            Circle()
                .fill(.blue)
                .frame(width: 100, height: 100)
                .offset(x:-130, y:-250)
            
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red)
                .frame(width: 150, height: 100)
                .offset(x:30, y:50)
        }
            
    }
}

#Preview {
    Task4View()
}


/*
 
 Create a `Circle` view with a size of 100 points and a blue color. Use the `offset` modifier to position the circle slightly outside the top-left corner of the screen. Add another shape, such as a `Rectangle`, below the circle and experiment with different offsets for both.
 
 */
