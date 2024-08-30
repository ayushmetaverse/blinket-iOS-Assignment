//
//  ContentView.swift
//  blinkAssign
//
//  Created by apple on 30/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SeachNavBar()
            
           ProportionalVStacksView()
            
            
            Spacer()
            
            CompactBlinkitComponent()
        }
        
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.light)
}
