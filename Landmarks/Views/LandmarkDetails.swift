//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Werton Silva on 17/11/23.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    var body: some View {
        VStack {
      
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            CircleImage(image: landmark.image).frame(width: 200, height: 200).offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                              .font(.title)
                          HStack {
                              Text(landmark.park)
                              Spacer()
                              Text(landmark.state)
                          }
                          .font(.subheadline)
                          .foregroundStyle(.secondary)
                          Divider()
                Text("About \(landmark.name)")
                              .font(.title2)
                Text(landmark.description)
                      }
                      .padding()
            Spacer()
           
        }.frame(width: .infinity).safeAreaPadding(.top)
       
    }
}

#Preview {
    LandmarkDetails(landmark: landmarks[0])
}
