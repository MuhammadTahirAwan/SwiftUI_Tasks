//
//  CustomToggleView.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct CustomToggleView: View {
    
    @State private var isDarkMode = false
    
    var body: some View {
        
        ZStack {
            (isDarkMode ? Color.black : Color.white)
                .ignoresSafeArea()
            
            Toggle(isOn: $isDarkMode) {
                Text(isDarkMode ? "Dark Mode" : "Light Mode")
                    .font(.headline)
                    .foregroundStyle(isDarkMode ? .white : .black)
            }
            .toggleStyle(
                CustomToggleStyle(
                    systemImage: isDarkMode ? "moon.fill" : "sun.max.fill",
                    activeColor: .indigo
                )
            )
            .padding(.horizontal, 24)
        }
        .animation(.easeInOut(duration: 0.25), value: isDarkMode)
    }
}

#Preview {
    CustomToggleView()
}


/*
 
 Create a custom `ToggleStyle` to make a switch that changes color when enabled. Use `Toggle` with this style to control the theme of a screen (e.g., dark/light mode background).
 
*/


struct CustomToggleStyle: ToggleStyle{
    
    
    var systemImage = "book"
    var activeColor: Color = .indigo
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack{
            
            configuration.label
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 30)
                .fill(configuration.isOn ? activeColor : Color(.systemGray5))
                .overlay {
                    Circle()
                        .fill(.white)
                        .padding(3)
                        .overlay {
                            Image(systemName: systemImage)
                                .foregroundColor(configuration.isOn ? activeColor : Color(.systemGray5))
                        }
                        .offset(x: configuration.isOn ? 10 : -10)
                    
                }
                .frame(width: 50, height: 32)
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
            
        }
        
    }
    
    
}
