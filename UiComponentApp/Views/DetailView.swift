//
//  DetailView.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-13.
//


import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: ComponentDetailViewModel
    @State private var isShowingSafariView = false
    @State private var searchURL: URL
    
    init(component: Component) {
        self.viewModel = ComponentDetailViewModel(component: component)
        _searchURL = State(initialValue: URL(string: "https://developer.apple.com")!)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("•")
                    .font(.title)
                    .padding(.trailing, 5)
                Text(viewModel.usageText)
                    .font(.body)
            }
            .padding()

            HStack {
                Text("•")
                    .font(.title)
                    .padding(.trailing, 5) 
                Text(viewModel.featureText)
                    .font(.body)
            }
            .padding()

            Button(action: {
                isShowingSafariView.toggle()
            }) {
                Label("Open Documentation", systemImage: "doc.text")
                    .font(.title2)
            }
            .padding()

            Spacer()
        }

        .navigationTitle(viewModel.title)
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
        .onAppear {
            if viewModel.title.isEmpty {
                searchURL = URL(string: "https://developer.apple.com")!
            } else {
                searchURL = URL(string: "https://developer.apple.com/documentation/swiftui/\(viewModel.title)")!
            }
        }
    }
}

