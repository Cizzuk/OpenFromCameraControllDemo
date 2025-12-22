//
//  ContentView.swift
//  OpenFromCameraControllDemo
//
//  Created by Cizzuk on 2025/12/22.
//

import AVFoundation
import PhotosUI
import SwiftUI

struct ContentView: View {
    @State private var shouldOpenCamera = false
    
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
        .fullScreenCover(isPresented: $shouldOpenCamera) {
            ImagePickerView()
        }
        .onReceive(NotificationCenter.default.publisher(for: .cameraControlDidActivate)) { _ in
            shouldOpenCamera = true
        }
    }
}

#Preview {
    ContentView()
}
