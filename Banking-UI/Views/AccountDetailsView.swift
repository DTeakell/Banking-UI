//
//  AccountDetailsView.swift
//  Banking-UI
//
//  Created by Dillon Teakell on 11/9/23.
//

import SwiftUI

struct AccountDetailsView: View {
    let accountNumber: Int
    let routingNumber: Int
    @State private var isShowingInformation = false
    var body: some View {
        NavigationStack {
            Form {
                Section ("Show or Hide Private Information") {
                    // Show or Hide Account and Routing Numbers
                    Toggle("Show Private Information", isOn: $isShowingInformation)
                }
                
                // Account and Routing Numbers
                Section("Account / Routing Information") {
                    HStack {
                        Text("Account Number: ")
                        
                        Spacer()
                        
                        if isShowingInformation {
                                Text(String(accountNumber))
                                    .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .navigationTitle("About")
        }
    }
}

#Preview {
    AccountDetailsView(accountNumber: 01122334455678, routingNumber: 01122334455678)
}
