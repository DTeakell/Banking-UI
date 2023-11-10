//
//  BalanceView.swift
//  Banking-UI
//
//  Created by Dillon Teakell on 11/9/23.
//

import SwiftUI

struct BalanceView: View {
    let balance: Double
    var body: some View {
        ZStack (alignment: .leading) {
            Color(Color("UI Color"))
                .frame(width: 370, height: 75)
                .clipShape(.rect(cornerRadius: 10))
            
            HStack {
                Image(systemName: "dollarsign.square.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                
                
                VStack (alignment: .leading) {
                    Text("Balance")
                        .font(.headline)
                        .fontWeight(.regular)
                    
                    Text(balance.formatted(.currency(code: "USD")))
                        .font(.title2)
                        .fontDesign(.rounded)
                        .fontWeight(.medium)
                    
                }
                .padding(.leading, 10)
            }
            .padding(.leading, 20)
        }
    }
}

#Preview {
    BalanceView(balance: 0.00)
}
