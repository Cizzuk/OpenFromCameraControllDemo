//
//  ContentView.swift
//  OpenFromCameraControllDemo
//
//  Created by Cizzuk on 2025/12/22.
//

import AVFoundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            switch AVCaptureDevice.authorizationStatus(for: .video) {
            case .notDetermined:
                AVCaptureDevice.requestAccess(for: .video) { _ in }
            default:
                break
            }
        }
    }
}

#Preview {
    ContentView()
}
