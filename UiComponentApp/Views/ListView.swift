//
//  ListView.swift
//  UiComponentApp
//
//  Created by AKHIL SANIL on 2024-11-13.
//
import SwiftUI

struct ListView: View {
    @StateObject private var viewModel = ComponentViewModel()

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Text Input/Output")) {
                    ForEach(viewModel.filteredComponents.filter { $0.type == .textInputOutput }) { component in
                        NavigationLink(destination: DetailView(component: component)) {
                            Label(component.title, systemImage: component.systemImageName)
                        }
                    }
                }

                Section(header: Text("Controls")) {
                    ForEach(viewModel.filteredComponents.filter { $0.type == .control }) { component in
                        NavigationLink(destination: DetailView(component: component)) {
                            Label(component.title, systemImage: component.systemImageName)
                        }
                    }
                }

                Section(header: Text("Container Views")) {
                    ForEach(viewModel.filteredComponents.filter { $0.type == .containerView }) { component in
                        NavigationLink(destination: DetailView(component: component)) {
                            Label(component.title, systemImage: component.systemImageName)
                        }
                    }
                }

                Section(header: Text("List")) {
                    ForEach(viewModel.filteredComponents.filter { $0.type == .list }) { component in
                        NavigationLink(destination: DetailView(component: component)) {
                            Label(component.title, systemImage: component.systemImageName)
                        }
                    }
                }
            }
            .navigationTitle("Components")
            .searchable(text: $viewModel.searchText)
        }
    }
}
