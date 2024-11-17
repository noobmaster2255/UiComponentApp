//
//  ComponentDetailViewModel.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-16.
//

import SwiftUI

class ComponentDetailViewModel: ObservableObject {
    @Published var usageText: String
    @Published var featureText: String
    @Published var title: String

    
    init(component: Component) {
        self.title = component.title
        self.usageText = ""
        self.featureText = ""
        self.configureComponentDetails(component: component)
    }

    private func configureComponentDetails(component: Component) {
        switch component.title {
        case "Text":
            self.usageText = "Use this component for displaying text input or output."
            self.featureText = "Features: Supports rich text formatting, dynamic content updates."
        case "Label":
            self.usageText = "A simple component to display static text."
            self.featureText = "Features: Can be styled with fonts, colors, and alignment."
        case "TextField":
            self.usageText = "Use this to gather input from users in the form of text."
            self.featureText = "Features: Supports multiline text, placeholders, and validation."
        case "SecureField":
            self.usageText = "A field for secure text input, such as passwords."
            self.featureText = "Features: Masks text input and supports validation."
        case "TextArea":
            self.usageText = "Used for larger text input or multi-line content."
            self.featureText = "Features: Can be resized, supports multiline text."
        case "Image":
            self.usageText = "Displays an image from a local asset or URL."
            self.featureText = "Features: Supports resizing, aspect ratio fitting, and animation."
        case "Button":
            self.usageText = "A clickable component that performs an action when tapped."
            self.featureText = "Features: Customizable labels, actions, and styles."
        case "Menu":
            self.usageText = "Displays a list of options that can be selected."
            self.featureText = "Features: Supports multiple actions and custom styling."
        case "Link":
            self.usageText = "A tappable link that opens a URL."
            self.featureText = "Features: Can be styled and customized for navigation."
        case "Slider":
            self.usageText = "A control for selecting a value from a continuous range."
            self.featureText = "Features: Supports customization of range, steps, and labels."
        case "Stepper":
            self.usageText = "A control for incrementing or decrementing a value."
            self.featureText = "Features: Allows step-by-step value adjustments."
        case "Toggle":
            self.usageText = "A switch for toggling between on/off states."
            self.featureText = "Features: Can be customized with labels and styles."
        case "Picker":
            self.usageText = "Allows selection from a list of options."
            self.featureText = "Features: Supports single and multiple selections."
        case "DatePicker":
            self.usageText = "A component for selecting a date and/or time."
            self.featureText = "Features: Customizable date format, supports time zones."
        case "ColorPicker":
            self.usageText = "A component for selecting a color."
            self.featureText = "Features: Supports color customization and multiple formats."
        case "ProgressView":
            self.usageText = "Displays progress for an ongoing task."
            self.featureText = "Features: Can show indeterminate or determinate progress."
        case "HStack":
            self.usageText = "A container that arranges items horizontally."
            self.featureText = "Features: Supports flexible layouts, spacing, and alignment."
        case "VStack":
            self.usageText = "A container that arranges items vertically."
            self.featureText = "Features: Supports flexible layouts, spacing, and alignment."
        case "ZStack":
            self.usageText = "A container for stacking views on top of each other."
            self.featureText = "Features: Supports layering views with flexible positioning."
        case "Form":
            self.usageText = "A container for grouping form elements together."
            self.featureText = "Features: Automatically adjusts layout and provides accessibility."
        case "NavigationView":
            self.usageText = "A container for navigation-related views."
            self.featureText = "Features: Supports navigation and management of views in a stack."
        case "Alerts":
            self.usageText = "Displays an alert to inform or prompt the user."
            self.featureText = "Features: Can include buttons, customizable actions, and text."
        case "Plain":
            self.usageText = "A simple list style with no additional styling."
            self.featureText = "Features: Basic list items with minimal styling."
        case "Inset":
            self.usageText = "A list style with inset grouping of items."
            self.featureText = "Features: Provides padding around list items for visual separation."
        case "Grouped":
            self.usageText = "A list style with grouped sections."
            self.featureText = "Features: Supports section headers and footers."
        case "Inset Grouped":
            self.usageText = "A list style with both inset grouping and section headers."
            self.featureText = "Features: Includes inset padding and grouped sections."
        case "Sidebar":
            self.usageText = "A sidebar for organizing navigation and actions."
            self.featureText = "Features: Allows for persistent navigation with optional sections."
        default:
            self.usageText = "Usage details not available."
            self.featureText = "Features details not available."
        }
    }
}


