//
//  ContentView.swift
//  Landmarks
//
//  Created by 中司浩史 on 2026/05/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
