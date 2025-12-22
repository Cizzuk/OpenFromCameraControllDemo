//
//  CaptureIntent.swift
//  OpenFromCameraControllDemo
//
//  Created by Cizzuk on 2025/12/22.
//

import AppIntents

extension Notification.Name {
    static let cameraControlDidActivate = Notification.Name("cameraControlDidActivate")
}

struct CaptureIntent: CameraCaptureIntent {
    static let title: LocalizedStringResource = "CaptureIntent"
    static var isDiscoverable: Bool = false

    @MainActor
    func perform() async throws -> some IntentResult {
        NotificationCenter.default.post(name: .cameraControlDidActivate, object: nil)
        return .result()
    }
}
