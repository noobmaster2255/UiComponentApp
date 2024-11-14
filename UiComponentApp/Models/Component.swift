//
//  Component.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-13.
//
import SwiftUI

// Model for the list items
struct Component: Identifiable {
    let id = UUID()
    let title: String
    let type: ComponentType
    let systemImageName: String
    let documentationURL: URL
}

enum ComponentType {
    case textInputOutput, control, containerView, list
}
