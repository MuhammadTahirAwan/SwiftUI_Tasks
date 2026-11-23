//
//  SwiftUIListView.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI

struct SwiftUIListView: View {
    
    let names = ["Apple", "Honda", "Toyota", "NVIDIA", "Twitter"]
    
    var body: some View {
        
        
        List(names, id: \.self){ name in
            
            
            HStack{
                
                Text(name)
                Spacer()
                Button("Tap"){
                    print(name)
                }
            }
            
        }
        
        
        
    }
}

#Preview {
    SwiftUIListView()
}

//Create a `List` of five names. Each row should include a `Text` view with the name and a `Button` labeled "Tap". When the button is pressed, print the name to the console.
