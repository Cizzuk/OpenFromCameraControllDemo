//
//  ImagePickerView.swift
//  OpenFromCameraControllDemo
//
//  Created by Cizzuk on 2025/12/22.
//

import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    func makeUIViewController(context: Self.Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        return imagePicker
    }
 
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) { }
}
