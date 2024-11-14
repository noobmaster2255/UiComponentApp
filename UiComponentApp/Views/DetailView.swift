//
//  DetailView.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-13.
//
import SwiftUI

struct DetailView: View {
    let component: Component
    @State private var isShowingSafariView = false
    @State private var searchURL: URL

    init(component: Component) {
        self.component = component
        _searchURL = State(initialValue: component.documentationURL)
    }

    var body: some View {
        VStack {
            Text(component.title)
                .font(.largeTitle)
                .padding()

            Button(action: {
                isShowingSafariView.toggle()
            }) {
                Label("Open Documentation", systemImage: "doc.text")
                    .font(.title2)
            }
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {
                    isShowingSafariView.toggle()
                }) {
                    Image(systemName: "doc.text")
                }
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SFSafariView(searchURL: $searchURL)
        }
    }
}
