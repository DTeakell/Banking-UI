//
//  ContentView.swift
//  Banking-UI
//
//  Created by Dillon Teakell on 11/6/23.
//

import SwiftUI

struct HomeView: View {
    let account = BankAccount.MockData()
    let background = Color(Color("UI Color"))
    var body: some View {
            NavigationStack {
                ScrollView {
                        // Card View
                        VStack {
                            CardView()
                                .navigationTitle(account.fakeAccount.name)
                                .toolbar {
                                    ToolbarItem(placement: .topBarTrailing) {
                                        NavigationLink {
                                            AccountDetailsView(accountNumber: account.fakeAccount.accountNumber, routingNumber: account.fakeAccount.routingNumber)
                                        } label: {
                                            Image(systemName: "info.circle")
                                        }
                                    }
                                }
                            
                            // InformationView
                            InformationView()
                            
                            // Transaction View
                            TransactionView()
                    }
                }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}

struct InformationView: View {
    let account = BankAccount.MockData()
    var body: some View {
        VStack {
            // Name of Account Holder
            NameView(name: account.fakeAccount.nameOfAccountHolder)
            
            // Balance
            BalanceView(balance: account.fakeAccount.accountBalance)
        }
        .padding()
    }
}

struct TransactionView: View {
    var body: some View {
        HStack {
            Text("Latest Transactions")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading, 20)
                .padding(.vertical, 10)
            
            Spacer()
            
            
        }
    }
}
