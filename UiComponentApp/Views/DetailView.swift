//
//  DetailView.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-13.
//
import SwiftUI

struct DetailView: View {
    let component: Component

    var body: some View {
        VStack {
            Text("Details for \(component.title)")
                .font(.title)
                .padding()

            Button("Open Documentation") {
                if let url = URL(string: component.documentationURL.absoluteString) {
                    UIApplication.shared.open(url)
                }
            }
            .padding()
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {
                    if let url = URL(string: component.documentationURL.absoluteString) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Image(systemName: "doc.text")
                }
            }
        }
    }
}
