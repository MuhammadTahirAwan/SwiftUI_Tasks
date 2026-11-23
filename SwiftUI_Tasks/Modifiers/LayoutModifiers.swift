//
//  LayoutModifiers.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct LayoutModifiers: View {
    var body: some View {
        Text("SwiftUI Layout Modifiers")
            .padding(.all, 16)
            .background(RoundedRectangle(cornerRadius: 10).fill(.orange))
        
        Text("SwiftUI Layout Modifiers")
            .padding(.leading, 16)
            .background(RoundedRectangle(cornerRadius: 10).fill(.orange))
        
        Text("SwiftUI Layout Modifiers")
            .padding(.trailing, 16)
            .background(RoundedRectangle(cornerRadius: 10).fill(.orange))
        
        Text("SwiftUI Layout Modifiers")
            .padding(.top, 16)
            .background(RoundedRectangle(cornerRadius: 10).fill(.orange))
        
        Text("SwiftUI Layout Modifiers")
            .padding([.bottom, .trailing], 16)
            .background(RoundedRectangle(cornerRadius: 10).fill(.orange))
    }
}

#Preview {
    LayoutModifiers()
}
