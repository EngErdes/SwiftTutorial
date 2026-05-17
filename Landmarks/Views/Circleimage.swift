//
//  Circleimage.swift
//  Landmarks
//
//  Created by 中司浩史 on 2026/05/09.
//

import SwiftUI

struct Circleimage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    Circleimage(image: Image("turtlerock"))
}
