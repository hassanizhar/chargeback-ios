//
//  AppPickerItem.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct AppPickerItem: View {
    
    var app: AppName
    @Binding var selectedApp: AppName
    
    var body: some View {
        HStack {
            Image(app.imageName)
                .resizable()
                .frame(width: 32, height: 32)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(app.rawValue)
                .foregroundColor(Color("TextDark"))
            
            Spacer()
            
            if app == selectedApp {
                Image("check_circle")
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .contentShape(Rectangle())
        .onTapGesture {
            selectedApp = app
        }
        CustomDivider()
            .padding(.horizontal, 16)
    }
}
