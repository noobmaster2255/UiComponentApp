//
//  SafariView.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-13.
//

import SwiftUI
import SafariServices

struct SFSafariView: UIViewControllerRepresentable {
    @Binding var searchURL: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        let configuration = SFSafariViewController.Configuration()
        configuration.barCollapsingEnabled = true

        let safariViewController = SFSafariViewController(url: searchURL, configuration: configuration)
        safariViewController.dismissButtonStyle = .close

        return safariViewController
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
    }
}
