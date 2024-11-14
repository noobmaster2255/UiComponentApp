//
//  ComponentViewModel.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-13.
//
import SwiftUI

class ComponentViewModel: ObservableObject {
    @Published private(set) var components: [Component] = [
        // Section 1: Text Input/Output
        Component(title: "Text", type: .textInputOutput, systemImageName: "textformat", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/text")!),
        Component(title: "Label", type: .textInputOutput, systemImageName: "tag", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/label")!),
        Component(title: "TextField", type: .textInputOutput, systemImageName: "square.and.pencil", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/textfield")!),
        Component(title: "SecureField", type: .textInputOutput, systemImageName: "lock", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/securefield")!),
        Component(title: "TextArea", type: .textInputOutput, systemImageName: "text.alignleft", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/textarea")!),
        Component(title: "Image", type: .textInputOutput, systemImageName: "photo.fill", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/textarea")!),

        // Section 2: Controls
        Component(title: "Button", type: .control, systemImageName: "rectangle.and.hand.point.up.left", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/button")!),
        Component(title: "Menu", type: .control, systemImageName: "filemenu.and.selection", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),
        Component(title: "Link", type: .control, systemImageName: "link", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),
        Component(title: "Slider", type: .control, systemImageName: "slider.horizontal.3", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),
        Component(title: "Stepper", type: .control, systemImageName: "figure.step.training", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),
        Component(title: "Toggle", type: .control, systemImageName: "togglepower", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),
        Component(title: "Picker", type: .control, systemImageName: "cursorarrow.click", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),
        Component(title: "DatePicker", type: .control, systemImageName: "calendar", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),
        Component(title: "ColorPicker", type: .control, systemImageName: "paintpalette", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),
        Component(title: "ProgressView", type: .control, systemImageName: "circle.hexagonpath", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!),



        // Section 3: Container Views
        Component(title: "HStack", type: .containerView, systemImageName: "square.stack.3d.up", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/hstack")!),
        Component(title: "VStack", type: .containerView, systemImageName: "square.stack", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/vstack")!),
        Component(title: "ZStack", type: .containerView, systemImageName: "z.square", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/vstack")!),
        Component(title: "Form", type: .containerView, systemImageName: "mail", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/vstack")!),
        Component(title: "NavigationView", type: .containerView, systemImageName: "location", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/vstack")!),
        Component(title: "Alerts", type: .containerView, systemImageName: "bell", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/vstack")!),
        Component(title: "Sheets", type: .containerView, systemImageName: "newspaper", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/vstack")!),


        // Section 4: List
        Component(title: "Plain", type: .list, systemImageName: "list.bullet", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/list")!),
        Component(title: "Inset", type: .list, systemImageName: "inset.filled.bottomthird.square", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/list")!),
        Component(title: "Grouped", type: .list, systemImageName: "rectangle.3.group", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/list")!),
        Component(title: "Inset Grouped", type: .list, systemImageName: "inset.filled.topleft.topright.bottomleft.bottomright.rectangle", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/list")!),
        Component(title: "Sidebar", type: .list, systemImageName: "sidebar.right", documentationURL: URL(string: "https://developer.apple.com/documentation/swiftui/list")!),
    ]

    @Published var searchText = ""

    // Filtered components based on search text
    var filteredComponents: [Component] {
        if searchText.isEmpty {
            return components
        } else {
            return components.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
}
