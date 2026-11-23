//
//  DynamicListView.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 23/11/2026.
//

import SwiftUI


struct Item: Identifiable{
    
    var id = UUID()
    var name: String
    var isEnabled: Bool = false
}

struct DynamicListView: View {
    
    
    @State private var items = [Item(name: "Go to ATM"),
                                Item(name: "Complete EPAM Course Task"),
                                Item(name: "Finish SwiftUI tasks"),
                                Item(name: "Call Brother")]
    var body: some View {
        
        
        List($items){ $item in
            
            Toggle(item.name, isOn: $item.isEnabled)
        }
    }
}

#Preview {
    DynamicListView()
}


/*
 Create a `List` of items (e.g., groceries or tasks), each with a name and a toggle switch. Store the data in an array of structs. Use @State to keep track of which items are enabled.
*/
