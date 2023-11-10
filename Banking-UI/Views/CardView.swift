//
//  CardView.swift
//  DeveloperProfile-UI
//
//  Created by Dillon Teakell on 11/6/23.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        ZStack {
            Color(Color.primary)
                .frame(width: 375, height: 225)
                .clipShape(.rect(cornerRadius: 10))
            
            Text(" Bank Card")
                .padding(.trailing, 180)
                .padding(.bottom, 150)
                .font(.title)
                .foregroundStyle(.background)
        }
        .shadow(color: .primary, radius: 2)
    }
}

#Preview {
    CardView()
}
