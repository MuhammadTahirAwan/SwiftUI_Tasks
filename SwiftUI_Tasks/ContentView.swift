import SwiftUI


struct ContentView: View {
    
    @State private var toggleVar = false
    
    var body: some View {
        VStack{
            
            HStack{
                
                Spacer(minLength: 10)
                Toggle(isOn: $toggleVar) {
                    
                    
                    Text("Show Greeting")
                    
                        
                }
                Spacer(minLength: 10)
            }
            
            if toggleVar{
                Text("Hello, SwiftUI!")
            }
        }
    }
}

#Preview {
    ContentView()
}


