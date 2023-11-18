//
//  ContentView.swift
//  Landmarks
//
//  Created by Werton Silva on 16/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Text("Home").font(.custom("subtitle", size: 20))
            Spacer()
            CircleImage(image: Image("face")).frame(width: 50, height: 50)
        }.frame(width: .infinity).padding(.horizontal)
        LandmarkList()
        Spacer()
    }
}

#Preview {
    ContentView()
}
