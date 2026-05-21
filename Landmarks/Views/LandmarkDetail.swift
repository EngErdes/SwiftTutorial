//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 中司浩史 on 2026/05/17.
//

import SwiftUI


struct LandmarkDetail: View {
    var landmark: Landmark


    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)


            Circleimage(image: landmark.image)
                .offset(y: -130)
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
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
