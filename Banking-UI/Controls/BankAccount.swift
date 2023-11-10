//
//  Bank.swift
//  Banking-UI
//
//  Created by Dillon Teakell on 11/9/23.
//

import Foundation

struct BankAccount: Identifiable, Hashable{
    let name: String
    let nameOfAccountHolder: String
    let accountBalance: Double
    let accountNumber: Int
    let routingNumber: Int
    let showBalance: Bool
    let id = UUID()
    
    struct MockData {
        let fakeAccount = BankAccount(name: "My Checking", nameOfAccountHolder: "Dillon Teakell", accountBalance: 1097.64, accountNumber: 01122334455678, routingNumber: 01122334455678, showBalance: true)
    }

}

