//
//  CaptureIntent.swift
//  OpenFromCameraControllDemo
//
//  Created by Cizzuk on 2025/12/22.
//

import AppIntents

struct CaptureIntent: CameraCaptureIntent {
    static let title: LocalizedStringResource = "CaptureIntent"
    static var isDiscoverable: Bool = false

    @MainActor
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
