//
//  Task6View.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct Task6View: View {
    
    @State private var isEnabled = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(Title(isEnabled: isEnabled))
            .onTapGesture {
                isEnabled.toggle()
            }
//            .background(RoundedRectangle(cornerRadius: 10)
//                .fill(.indigo))
    }
}

#Preview {
    Task6View()
}



struct Title: ViewModifier{
    
    let isEnabled: Bool
    
    func body(content: Content) -> some View{
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(isEnabled ? Color.indigo : Color.gray)
            .clipShape(.rect(cornerRadius: 10))
    }
}

/*
 
 Make your own view modifier for buttons, that will set font, foreground/background color and button's shape. Extend this modifier this way, that it will change button's background color based on some state (for example, `isEnabled` property)
 
 */
