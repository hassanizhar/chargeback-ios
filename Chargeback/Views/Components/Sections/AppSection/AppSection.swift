//
//  AppSection.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct AppSection: View {
    
    @Binding var showAppSheet: Bool
    var appName: AppName
    
    var body: some View {
        HStack {
            Text("App")
                .foregroundColor(Color("TextLight"))
            Spacer()
            HStack(spacing: 4) {
                Text(appName.rawValue)
                    .foregroundColor(Color("TextDark"))
                
                Image("unfold_more")
                    .resizable()
                    .frame(width: 18, height: 18)
            }
            .onTapGesture {
                showAppSheet = true
            }
        }
        CustomDivider()
    }
}
