//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Werton Silva on 17/11/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
                    List(landmarks) { landmark in
                        NavigationLink {
                            LandmarkDetails(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                    .navigationTitle("Landmarks")
                } detail: {
                    Text("Select a Landmark")
                }
    }
}
#Preview {
    LandmarkList()
}
