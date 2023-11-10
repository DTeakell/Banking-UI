//
//  NameView.swift
//  Banking-UI
//
//  Created by Dillon Teakell on 11/9/23.
//

import SwiftUI

struct NameView: View {
    let name: String
    var body: some View {
        ZStack (alignment: .leading) {
            Color(Color("UI Color"))
                .frame(width: 370, height: 70)
                .clipShape(.rect(cornerRadius: 10))
            
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                
                
                VStack (alignment: .leading) {
                    Text("Account Holder")
                        .font(.headline)
                        .fontWeight(.regular)
                    
                    Text(name)
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundStyle(.gray)
                    
                }
                .padding(.leading, 10)
            }
            .padding(.leading, 20)
        }
    }
}

#Preview {
    NameView(name: "Dillon Teakell")
}
