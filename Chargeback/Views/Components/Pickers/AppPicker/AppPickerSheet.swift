//
//  AppPickerSheet.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import SwiftUI

struct AppPickerSheet: View {
    
    @Binding var isPresented: Bool
    @Binding var selectedApp: AppName
    
    @State private var searchText = ""
    
    let apps: [AppName]
    
    var filteredApps: [AppName] {
        if searchText.isEmpty {
            return apps
        } else {
            return apps.filter { $0.rawValue.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        VStack(spacing: 12) {
            PickerHeader(isPresented: $isPresented, title: "App")
            
            SearchBar(searchText: $searchText)
            
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(filteredApps, id: \.self) { app in
                        AppPickerItem(app: app, selectedApp: $selectedApp)
                    }
                }
            }
        }
        .presentationDetents([.medium, .large])
    }
}
