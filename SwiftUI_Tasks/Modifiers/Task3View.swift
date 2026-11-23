//
//  Task3View.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct Task3View: View {
    var body: some View {
        
        HStack(spacing: 10){
            
            Text("Item 1")
                .frame(maxWidth: .infinity, alignment: .leading)   // Left
            
            Text("Item 2")
                .frame(maxWidth: .infinity, alignment: .center)    // Center
            
            Text("Item 3")
                .frame(maxWidth: .infinity, alignment: .trailing)  // Right
        
        }.padding()
    }
}

#Preview {
    Task3View()
}


/*
 
 Create an `HStack` with three `Text` views that display "Item 1", "Item 2", and "Item 3". Use the `spacing` modifier on the HStack to set consistent spacing between the items. Add padding to the entire `HStack` and adjust the alignment of the text views within the stack.
 

 */
