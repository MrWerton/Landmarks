//
//  CircleImage.swift
//  Landmarks
//
//  Created by Werton Silva on 16/11/23.
//

import SwiftUI

struct CircleImage: View {
    public var image: Image

    var body: some View {
        image.resizable().aspectRatio(contentMode: .fill).clipShape(Circle()).overlay{
            Circle().stroke(.cyan, lineWidth: 1)
        }.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircleImage(image:Image("moskov"))
}
