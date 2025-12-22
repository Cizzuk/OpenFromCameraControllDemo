//
//  CaptureExtension.swift
//  CaptureExtension
//
//  Created by Cizzuk on 2025/12/22.
//

import ExtensionKit
import Foundation
import LockedCameraCapture
import SwiftUI

@main
struct CaptureExtension: LockedCameraCaptureExtension {
    var body: some LockedCameraCaptureExtensionScene {
        LockedCameraCaptureUIScene { session in
            CaptureExtensionViewFinder(session: session)
        }
    }
}
