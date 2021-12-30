//
//  ContentView.swift
//  Full_Screen_Modal_SwiftUI
//
//  Created by Sebastian Kl
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var isPresented = false
    
    
    var body: some View {
  
        
        Button("Present!") {
            isPresented.toggle()
            
        }

        .fullScreenCover(isPresented: $isPresented, content: ModelView.init)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ModelView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            Button("Closed!") {
                presentationMode.wrappedValue.dismiss()
                 
            }
            .foregroundColor(.white)
            
        }
    }
}
